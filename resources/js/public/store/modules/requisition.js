import Axios from "axios";

export const requisition={
    namespaced: true,
    state:{
        requisitions:[],
        requisition:{},
        calculate_data:[],
        grand_total:0,
        message:"",
    },
    getters:{
        getRequisitions(state){
            return state.requisitions;
        },
         getCalculate_data(state){
            return state.calculate_data;
        }
    },
    actions:{
        get_requisitions(context,page){
            Axios.get('/admin/get_requisition').then(res=>{
                console.log(res.data.requisitions);
                context.commit('GET_REQUISIONS',res.data.requisitions)
            })
        },

        calculatePriceQty(context,calculationData){
            Axios.post('/admin/calculate_price_qty',calculationData).then(res=>{
              //  console.log(res.data);
                context.commit('GET_PRICE_QTY_CALCULATION',res.data)
            })
        },

        issueRequisition(context,issueData){
            Axios.post('/admin/issue_requisition',issueData).then(res=>{
             
                context.commit('ISSUE_REQUISITION',res.data)
            })
        },

        
    },
    mutations:{

    
        GET_REQUISIONS(state,data){
           return state.requisitions=data
        },

        GET_PRICE_QTY_CALCULATION(state,data){

           return state.calculate_data=data
           
        },

        ISSUE_REQUISITION(state,data){
            console.log(data)
           return state.message=data.message
           
        },

    }
}
