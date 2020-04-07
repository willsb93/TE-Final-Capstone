<template>
          <nav class="navbar">
        <div class="container">
          <div class="navbar-brand"><a class="navbar-item" href="/">StudentChatBot</a><a class="navbar-burger" role="button" aria-label="menu" aria-expanded="false"><span aria-hidden="true"></span><span aria-hidden="true"></span><span aria-hidden="true"></span></a></div>
          <div class="navbar-menu">
            <div class="navbar-start"><router-link :to="{ name: 'features' }" class="navbar-item">Features</router-link><router-link :to="{ name: 'demonstration' }" class="navbar-item">Demonstration</router-link><router-link :to="{ name: 'meettheteam' }" class="navbar-item">Meet The Team</router-link>

            </div>
          </div>
        </div>
      </nav>
</template>

<script>
export default {
  name: 'nav-bar'
}
</script>
      <ul class="nav">
        <router-link :to="{ name: 'home' }" class="navbar-item" exact>Home</router-link>
        <router-link :to="{ name: 'features' }" class="navbar-item">Features</router-link>
        <router-link :to="{ name: 'demonstration' }" tag="li">Demonstration</router-link>
        <router-link :to="{ name: 'meettheteam' }" tag="li">Related Books</router-link>
      </ul>