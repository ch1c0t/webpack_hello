{ render, div, p, a, nav, button, ul, li } = require 'teacup'

html = render ->
  div '.alert.alert-success', 'Success'
  div '.alert.alert-dark', 'Dark'

  a '.badge.badge-danger', 'Danger', href: '#'
  a '.badge.badge-dark', 'Dark', href: '#'

  nav '.breadcrumb', ->
    a '.breadcrumb-item', 'Home', href: '#'
    a '.breadcrumb-item', 'Library', href: '#'
    a '.breadcrumb-item', 'Data', href: '#'
    a '.breadcrumb-item.active', 'Bootstrap', href: '#'

  button '.btn.btn-dark', 'Dark'
  button '.btn.btn-link', 'Link'
  button '.btn.btn-dark.btn-lg.btn-block', "Large block level"

  div '.card', ->
    div '.card-body', 'This is some text within a card block.'

  div '.card', ->
    div '.card-header', 'Header'
    div '.card-body', 'Body'

  ul '.nav.nav-tabs', ->
    li '.nav-items', ->
      a '.nav-link.active', 'Active', href: '#'
    li '.nav-items', ->
      a '.nav-link', 'Not active', href: '#'

module.exports = { html }
