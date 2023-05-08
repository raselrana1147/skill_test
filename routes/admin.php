<?php 
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\Auth\LoginController;
use App\Http\Controllers\Admin\RequisitionController;



Route::get('/get_requisition', [RequisitionController::class, 'index'])->name('admin.get_requisition');
Route::post('/calculate_price_qty', [RequisitionController::class, 'calculate_price_qty'])->name('admin.calculate_price_qty');
Route::post('/issue_requisition', [RequisitionController::class, 'issue_requisition'])->name('admin.issue_requisition');



    Route::get('/', function () {
         return view('layouts.admin');
     });

 



Route::get('/{path}', function () {
    return view('layouts.admin');
});
