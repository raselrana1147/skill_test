import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)


const router=new VueRouter({
	mode:'history',
	 routes:[
	 	    {
	 			path:'/admin',
	 			name:'admin-dashboard',
	 			component:()=>import('../../views/admin/components/Dashboard.vue')
	 		},

	 		{
	 			path:'/admin/requisitin-list',
	 			name:'RequisitinList',
	 			component:()=>import('../../views/admin/components/Requisition.vue')
	 		},

	 		{
            path: '/admin/login',
            name: 'AdminLogin',
            component: () =>
                import ('../../views/admin/auth/AdminLogin.vue')
        },
	 	]

})

export default router;
