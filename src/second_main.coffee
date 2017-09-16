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
  div '#content'
  
pages =
  About: render -> div '1'
  Portfolio: render -> div '2'
  'Another page': render -> div '3'

update_content = (key) ->
  $('#content').html pages[key]


$ ->
  $('body').append html
  
  update_content 'About'

  $('#menu li').click ->
    $('#menu li').removeClass 'is-active'
    $(@).addClass 'is-active'
    update_content $(@).find('a').text()
