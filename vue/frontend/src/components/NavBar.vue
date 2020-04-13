<template>
  <div>
    <nav class="navbar">
      <div class="container">
       
        <div class="navbar-brand">
          <router-link :to="{ name: 'home' }" class="navbar-item" exact><img id="company-logo-img" src ="@/assets/newprofile.png" /></router-link>
          <a class="navbar-burger" role="button" aria-label="menu" aria-expanded="false">
          
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
          </a>
        </div>
        <div class="navbar-menu">
          <div class="navbar-start">
            <router-link :to="{ name: 'features' }" class="navbar-item">Features</router-link>
            <router-link :to="{ name: 'demonstration' }" class="navbar-item">Demo Increment++</router-link>
            <router-link :to="{ name: 'meettheteam' }" class="navbar-item">Meet The Team</router-link>
          </div>
        </div>

      </div>

    </nav>


  </div>

</template>

<script>
export default {
  name: "nav-bar"
};
</script>

<style>
  #company-logo-img {
    width: 2em;
    height: 2em;
  }

  #company-logo-img-full {
    width: 10em;
    height: 5em;

  }

</style>
