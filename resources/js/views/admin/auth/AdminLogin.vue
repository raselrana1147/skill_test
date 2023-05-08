<template>
    <div id="admin-login" class="hold-transition login-page">
  <div class="login-box">
  <div class="login-logo">
    <a href="">Admin Login</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

      <form method="post" @submit.prevent="admin_login">
        <div class="input-group mb-3">
          <input type="text" class="form-control" autocomplete="" v-model="form.email" placeholder="Email">

          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>

        </div>
         <span class="text-danger" v-if="errors['email']">{{ errors['email'][0] }}</span>

        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="Password" v-model="form.password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <span class="text-danger" v-if="errors['password']">{{ errors['password'][0] }}</span>
        <div class="row">

          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

    </div>
    <!-- /.login-card-body -->
  </div>
</div>
    </div>
</template>

<script>
    export default {
        name:'AdminLogin',
        data(){
            return{
                form:{

                },

                errors:{},
            }
        },

        methods:{
            admin_login:function(){
                axios.post('/admin/login/submit',this.form).then((response)=>{
                    localStorage.setItem('adminLogin',JSON.stringify(response.data))
                    this.$router.push({name:'Dashboard'})
                }).catch((err)=>{
                    console.log(err.response.data.errors)
                    this.errors=err.response.data.errors
                })
            }
        }
    }
</script>

<style lang="stylus" scoped>

</style>
