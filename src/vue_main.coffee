import Vue from 'vue'

new Vue
  el: '#main'
  data:
    name: 'Vue'
  render: (createElement) ->
    createElement 'h', "Hello, #{@name}."
