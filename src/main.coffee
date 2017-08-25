require './style.sass'
some = require './some.coffee'

component = ->
  element = document.createElement 'div'

  element.innerHTML = "Jet"
  element.classList.add 'hello'
  
  element

document.body.appendChild component()
some "string3"
