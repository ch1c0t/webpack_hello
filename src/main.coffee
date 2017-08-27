require './style.sass'
#some = require './some.coffee'

component = ->
  element = document.createElement 'div'

  element.innerHTML = "Jet"
  element.classList.add 'hello'
  
  element

{ render, div, p } = require 'teacup'
html = render ->
  div '.panel', 'Outside of any container'
  div '.container', ->
    div '.panel', 'Inside of .container'
  div '.fluid-container', ->
    div '.panel', 'Inside of .fluid-container'

  p "Grid:"
  div '.fluid-container', ->
    div '.row', ->
      div '.col', '1 of 2'
      div '.col', '2 of 2'

    div '.row', ->
      div '.col', '1 of 3'
      div '.col', '2 of 3'
      div '.col', '3 of 3'

    div '.row', ->
      div '.col', '1 of 3'
      div '.col-6', '2 of 3(wider)'
      div '.col', '3 of 3'

    div '.row', ->
      div '.col', '1 of 3'
      div '.col-5', '2 of 3(wider)'
      div '.col', '3 of 3'

    div '.row', ->
      div '.col-8', 'col-8'
      div '.col-4', 'col-4'

  p "Grid outside of any container:"
  div '.row', ->
    div '.col', '1 of 2'
    div '.col', '2 of 2'

  div '.row', ->
    div '.col', '1 of 3'
    div '.col', '2 of 3'
    div '.col', '3 of 3'

  div '.row', ->
    div '.col', '1 of 3'
    div '.col-6', '2 of 3(wider)'
    div '.col', '3 of 3'

  div '.row', ->
    div '.col', '1 of 3'
    div '.col-5', '2 of 3(wider)'
    div '.col', '3 of 3'

  div '.row', ->
    div '.col-8', 'col-8'
    div '.col-4', 'col-4'

document.body.insertAdjacentHTML 'beforeend', html
