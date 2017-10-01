module.exports =
  data: ->
    message: "Portfolio"
    images: require.context('../../images').keys()
