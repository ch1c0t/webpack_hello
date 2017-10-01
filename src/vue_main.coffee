import Vue from 'vue'
import Router from 'vue-router'

require './vue_style.sass'

Vue.use Router

About =
  path: '/'
  component: require('./components/About.vue').default

Portfolio =
  path: '/portfolio'
  component: require('./components/Portfolio.vue').default

App = require('./components/App.vue').default

new Vue
  el: '#main'
  render: (h) -> h App
  router: new Router
    routes: [About, Portfolio]
