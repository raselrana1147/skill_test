<template>
	<div id="RequisitionList">
	<div class="content-wrapper">
	<div class="container-fluid">
		 <div class="row">
		 	<h2>All Requisitions</h2>
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Responsive Hover Table</h3>

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            <!-- {{ requisitions }} -->
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                  <p class="p-4 text-green">{{message}}</p>
                <table class="table table-hover text-nowrap">
                  <thead>

                    <tr>
                      <th>ID</th>
                      <th>Item Name</th>
                      <th>Total Stock Price</th>
                      <th>Available Stock Quantity</th>
                      <th>Request Quantity</th>
                      <th>Deliver Quantity</th>
                      <th>Price*qty</th>
                      <th>Issue</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(requisition,index) in requisitions" :key="index">
                      <td>{{index+1}}</td>
                      <td>{{requisition.item.item_name}}</td>
                      <td>{{requisition.item.stock.total_price}}</td>
                      <td>{{requisition.item.stock.total_quantity}}</td>
                      <td>{{requisition.quantity}}</td>
                      <td><input :max="requisition.quantity" min="1" v-model="index_delivery_qty[index]" 
                        type="number" @change='calculatePriceQty(requisition.id,index)'></td>
                      <td > <strong><span :ref="'myRef-' + index"></span></strong> </td>
                      <td><button @click="issueRequisition(requisition.id)" class="btn btn-success">Issue Requisition</button></td>

                    </tr>
                   
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
	</div>
	</div>
	</div>
</template>
<script>
import {mapActions,mapState} from "vuex"
export default {
    name:'RequisitionList',

    data() {
      return {

      	index_delivery_qty:[],
        calculate_data:[],
        errors:{},
        deliveryCalculation:{
                    requisition_id:'',
                    delivery_qty:''
                    
                },


          issueData:{
            requisition_id:'',
            calculate_data:[]
          }
       
      }

    },

    computed:{
        ...mapState({
            requisitions:state=>state.requisition.requisitions,
            grand_total:state=>state.requisition.grand_total,
            message:state=>state.requisition.message,
        })
        
    },

    mounted(){

        this.get_requisitions();

    },

    methods: {

        ...mapActions({
            get_requisitions:'requisition/get_requisitions'
        }),


        calculatePriceQty: async function(id,index){
          try{
              this.deliveryCalculation.requisition_id=id;
              this.deliveryCalculation.delivery_qty=this.index_delivery_qty[index];
              await axios.post('/admin/calculate_price_qty',this.deliveryCalculation).then((response)=>{
                  this.calculate_data=response.data
                  this.$refs["myRef-" + index][0].textContent = response.data.grand_total
              })
           
          }catch(e){
            console.log(e)
          }
        },

        issueRequisition: async function (id){
                
               try{
                  this.issueData.requisition_id=id;
                  this.issueData.calculate_data=this.calculate_data.calculate_data
                  console.log(this.issueData)

                   await this.$store.dispatch('requisition/issueRequisition',this.issueData).then(()=>{
                    });
                   this.get_requisitions()

               }catch(e){
                  console.log();
               }
               
        }
    }
  }

</script>