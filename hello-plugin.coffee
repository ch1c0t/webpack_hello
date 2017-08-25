f = (options) ->

f::apply = (compiler) ->
  compiler.plugin 'done', ->
    console.log 'ololol'

module.exports = f
