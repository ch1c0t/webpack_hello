require './second_style.sass'

$ = require 'jquery'
{ render, div, a, ul, li, img  } = require 'teacup'

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
  
soviet_car = require './images/soviet_car.jpg'
pages =
  About: render -> div '1'
  Portfolio: render ->
    div '2'
    img src: soviet_car
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
