require './second_style.sass'

{ render, div, a, ul, li  } = require 'teacup'
html = render ->
  div '.tabs.is-large.is-right', ->
    ul ->
      li '.is-active', ->
        a 'About'
      li ->
        a 'Portfolio'
      li ->
        a 'Another page'

document.body.insertAdjacentHTML 'beforeend', html
