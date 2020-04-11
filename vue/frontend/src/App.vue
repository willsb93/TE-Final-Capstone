<template>
  <div id="app">
    <nav-bar></nav-bar>
    <router-view/>
  </div>
</template>

<script>
import NavBar from "./components/NavBar.vue";
export default {
  name: "app",
  components: {
    NavBar
  }
};
</script>

<style>

body {
  background-color: #eee;
}

.product-name {
  color:#3273dc;
  font-weight: bold;
  font-size: 1em;
}

</style>