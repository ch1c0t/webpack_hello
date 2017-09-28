import Vue from 'vue'
import Router from 'vue-router'

require './vue_style.sass'

Vue.use Router

About =
  path: '/'
  component:
    template: '<div>foo</div>'

Portfolio =
  path: '/portfolio'
  component:
    template: '<div>bar</div>'

router = new Router
  routes: [About, Portfolio]

app = new Vue { router }
app.$mount '#main'
