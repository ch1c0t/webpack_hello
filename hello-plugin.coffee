f = (options) ->

# https://news.ycombinator.com/item?id=15169455
# http://jackhiston.com/2017/9/4/the-wonderful-world-of-webpack
# https://webpack.js.org/api/plugins/compiler/#event-hooks
displayCurrentDate = (compilation, callback) ->
  console.log Date()
  callback()

f::apply = (compiler) ->
  compiler.plugin 'emit', displayCurrentDate
  compiler.plugin 'after-emit', displayCurrentDate
  compiler.plugin 'done', ->
    console.log 'ololol'

module.exports = f
