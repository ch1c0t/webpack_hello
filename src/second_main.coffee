require './second_style.sass'

$ = require 'jquery'
{ render, div, a, ul, li  } = require 'teacup'

html = render ->
  div '.tabs.is-large.is-right', ->
    ul '#menu', ->
      li '.is-active', ->
        a 'About'
      li ->
        a 'Portfolio'
      li ->
        a 'Another page'

$ ->
  $('body').append html

  $('#menu li').click ->
    $('#menu li').removeClass 'is-active'
    $(@).addClass 'is-active'
