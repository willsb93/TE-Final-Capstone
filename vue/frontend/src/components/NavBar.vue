<template>
  <div>
    <nav class="navbar" id="nav-bar">
      <div class="container" id="nav-bar-container">
        <div class="navbar-brand">
          <router-link :to="{ name: 'home' }" class="navbar-item nav-links" exact>
            <img id="company-logo-img" src="@/assets/newprofile.png"> Home
          </router-link>
          <a class="navbar-burger" role="button" aria-label="menu" aria-expanded="false">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
          </a>
        </div>
        <div class="navbar-menu">
          <div class="navbar-start">
            <router-link
              :to="{ name: 'demonstration' }"
              class="navbar-item nav-links"
            >Demo Increment++</router-link>
            <router-link :to="{ name: 'meettheteam' }" class="navbar-item nav-links">Meet The Team</router-link>
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
  width: auto;
  height: 4em;
}

#company-logo-img:hover {
  background-color: #fafafa;
}

#nav-bar-container {
  height: 5em;
}

#nav-bar {
  height: 4em;
  position: fixed;
  width: 100%;
  top: 0;
  overflow: hidden;
}
</style>
