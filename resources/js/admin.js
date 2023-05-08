require('./bootstrap');
//window.Vue = require('vue').default;
import Vue from 'vue';
import router from './public/router/admin_router'
import {store} from './public/store/store.js'




Vue.component('admin-master', require('./views/layouts/AdminMaster.vue').default);

const app = new Vue({
    el: '#admin',
    router,
    store
});
