import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)
const Foo = { template: '<div>foo</div>' }

const router=new VueRouter({
	mode:'history',

	 routes:[
	 		{
	 			path:'/foo',
	 			name:'foo',
	 			component:()=>import('../../views/ExampleComponent')
	 	    }
	 	]

})

export default router;
