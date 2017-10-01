context = require.context '../../images'
images = context.keys().map (key) -> context key

module.exports =
  data: ->
    message: "Portfolio"
    images: images
