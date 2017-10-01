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

router = new Router
  routes: [About, Portfolio]

App = require('./components/App.vue').default
app = new Vue { router, render: (h) -> h App }
app.$mount '#main'
