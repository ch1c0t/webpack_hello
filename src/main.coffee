require './style.sass'

page = switch document.title
  when 'Main'
    require './pages/root.coffee'
  when 'Bootstrap 4 Components'
    require './pages/components.coffee'

document.body.insertAdjacentHTML 'beforeend', page.html
