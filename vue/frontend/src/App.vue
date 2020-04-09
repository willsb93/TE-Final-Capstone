<template>
  <div id="app">
    <nav-bar></nav-bar>
    <router-view/>
  </div>
</template>

<script>
import NavBar from "./components/NavBar.vue";
import Demonstration from "./views/Demonstration.vue";
export default {
  name: "app",
  components: {
    NavBar,
    Demonstration
  }
};
</script>