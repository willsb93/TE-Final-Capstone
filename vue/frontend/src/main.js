import Vue from 'vue'
import App from './App.vue'
import router from './router'

Vue.config.productionTip = false

window.axios = require('axios');
import './../node_modules/bulma/css/bulma.css';

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
