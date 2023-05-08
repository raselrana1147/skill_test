<template>
	<div id="admin_master">
		<div class="wrapper">
		    <admin-header></admin-header>
		    <admin-sidebar></admin-sidebar>
		    <router-view></router-view>
		    <admin-footer ></admin-footer>
	   </div>
	</div>
</template>

<script>

import AdminHeader from '../admin/inc/AdminHeader.vue'
import AdminSidebar from '../admin/inc/AdminSidebar.vue'
import AdminFooter from '../admin/inc/AdminFooter.vue'

export default ({
    name:'AdminApp',
    components:{
        AdminHeader,AdminSidebar,AdminFooter
    }
})
</script>