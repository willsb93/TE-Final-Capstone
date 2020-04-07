<template>
  <div>
    <nav class="navbar">
      <div class="container">
        <div class="navbar-brand">
          <router-link :to="{ name: 'home' }" class="navbar-item" exact>StudentChatBot</router-link>
          <a class="navbar-burger" role="button" aria-label="menu" aria-expanded="false">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
          </a>
        </div>
        <div class="navbar-menu">
          <div class="navbar-start">
            <router-link :to="{ name: 'features' }" class="navbar-item">Features</router-link>
            <router-link :to="{ name: 'demonstration' }" class="navbar-item">Demonstration</router-link>
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
