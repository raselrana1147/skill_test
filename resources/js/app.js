require('./bootstrap');
//window.Vue = require('vue').default;
import Vue from 'vue';
import router from './public/router/front_router'





Vue.component('public-muster', require('./views/layouts/PublicMaster.vue').default);

const app = new Vue({
    el: '#app',
    router,
});
