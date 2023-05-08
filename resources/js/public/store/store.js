import Vue from 'vue'
import Vuex from 'vuex'
Vue.use(Vuex)


import { requisition } from './modules/requisition.js';


// frontend
//import { user } from './modules/frontend/user'

export const store = new Vuex.Store({
    modules: {
        requisition,
        //frontend
       
    }
})