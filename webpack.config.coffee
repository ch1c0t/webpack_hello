html = require 'html-webpack-plugin'
hello = require './hello-plugin'

load_css =
  test: /\.css$/
  use: [
    'style-loader'
    'css-loader'
  ]

load_sass =
  test: /\.sass$/
  use: [
    'style-loader'
    'css-loader'
    'sass-loader'
  ]

load_coffee =
  test: /\.coffee$/
  use: [
    'babel-loader'
    'coffee-loader'
  ]

load_images =
   test: /\.(png|jpg|gif)$/
   use: 'file-loader'

module.exports =
  entry:
    first: './src/main.coffee'
    second: './src/second_main.coffee'
  output:
    path: "#{__dirname}/dist"
    filename: '[name].js'
  module:
    rules: [
      load_css
      load_sass
      load_coffee
      load_images
    ]
  plugins: [
    # https://github.com/jantimon/html-webpack-plugin/issues/218#issuecomment-183066602
    new html
      title: "Main"
      hash: on
      chunks: ['first']
    new html
      filename: 'components.html'
      title: "Bootstrap 4 Components"
      hash: on
      chunks: ['first']
    new html
      filename: 'second.html'
      title: "Second main"
      hash: on
      chunks: ['second']
    new hello
  ]
