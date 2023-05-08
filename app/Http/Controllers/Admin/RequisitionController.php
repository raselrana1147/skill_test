<?php

namespace App\Http\Controllers\Admin;

use Exception;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\Requisition;
use App\Models\Receive;
use App\Models\Stock;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\DB;
use App\Models\IssueRequisition;

class RequisitionController extends Controller
{
    

    public function index(){

        $requisitions=Requisition::query()->orderBy('id',"DESC")->get();
        
         return response()->json([
            'requisitions'=>$requisitions,
            'status'=>200
        ],Response::HTTP_OK);
    }



    public function calculate_price_qty(Request $request){
        
            //dd($request->all());
        if ($request->isMethod("post")) {
            try{


            $needed_quantity=$request->delivery_qty;
            $remain_quantity=$request->delivery_qty;
            $total_price=0;

            $keep_data=[];

            $requisition=Requisition::find($request->requisition_id);
           
             $total_recieve=Receive::where('item_id',$requisition->item_id)->where('quantity','>',0)->count();

             $available_stock=Stock::where('item_id',$requisition->item_id)->first();

             if ($available_stock->total_quantity < $request->delivery_qty) {
                 return "Insufficiet stock";
             }else{

                if ($total_recieve>0) {
                    $need_to_take=0;
                    for ($i=0; $i <$total_recieve; $i++) { 
                        if ($remain_quantity>0) {
                        
                        $data=Receive::where('item_id',$requisition->item_id)->where('quantity','>',0)->skip($i)->first();
                      
                        if ($data->quantity>=$remain_quantity) {

                          $need_to_take=$remain_quantity;
                          $remain_quantity=$remain_quantity-$need_to_take;
                          array_push($keep_data,['id'=>$data->id,'need_to_take'=>$need_to_take,'price'=>$data->price]);
                          break;

                        }else{

                            $need_to_take=$data->quantity;
                            $remain_quantity=$remain_quantity-$need_to_take;
                             array_push($keep_data,['id'=>$data->id,'need_to_take'=>$need_to_take,'price'=>$data->price]);
                             continue;
                        }
                      }
                       
                    }
                }
        }

            $grand_total=0;

            for ($i=0; $i <count($keep_data) ; $i++) { 
                    $grand_total+= $keep_data[$i]['price']*$keep_data[$i]['need_to_take'];
            }

             return response()->json([
                'grand_total'=>$grand_total,
                'calculate_data'=>$keep_data,
                'status'=>200
             ],Response::HTTP_OK);

            }catch(Exception $exception){

                 return response()->json([
                'grand_total'=>$exception->getMessage(),
                'calculate_data'=>$keep_data,
                'status'=>200
               ],Response::HTTP_OK);
            }
        
         


       }

           
    }



    public function issue_requisition(Request $request){

    
        if ($request->isMethod("POST")) {
        
        try {
          DB::beginTransaction();

            $total_issue_quantity=0;
               $total_issue_price=0;

           for ($i=0; $i <count($request->calculate_data) ; $i++) {
                // reduce recieve item
              $total_issue_quantity=$total_issue_quantity+$request->calculate_data[$i]['need_to_take'];
              $total_issue_price=$total_issue_price+($request->calculate_data[$i]['need_to_take']*$request->calculate_data[$i]['price']);

              $recieve=Receive::find($request->calculate_data[$i]['id']);
              $recieve->quantity=$recieve->quantity-$request->calculate_data[$i]['need_to_take'];
              $recieve->save();

           }
       // store issue detail
       IssueRequisition::create([

        'requisition_id'=>$request->requisition_id,
        'tota_issue_price'=>$total_issue_price,
        'tota_issue_quantity'=>$total_issue_quantity,

       ]);
       $requisition=Requisition::find($request->requisition_id);

       $stock=Stock::where('item_id',$requisition->item_id)->first();
       $stock->item_id=$requisition->item_id;
       $stock->total_quantity=$stock->total_quantity-$total_issue_quantity;
       $stock->total_price=$stock->total_price-$total_issue_price;
       $stock->save();
        DB::commit();

        return \response()->json([
                    'message'=>'Requisition has been successfully issued',
                    'status_code'=>200
                ],Response::HTTP_OK);
            
        } catch (QueryException  $e) {
                $error=$e->getMessage();

                return \response()->json([
                    'error'=>$error,
                    'status_code'=>500
                ],Response::HTTP_INTERNAL_SERVER_ERROR);
        }
        
       
   }

      
    }


}
