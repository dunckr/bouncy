class bouncy.Config

  _instance = undefined

  @instance: ->
    _instance ?= new ConfigImpl()

  @setDimensions: (dimensions) ->
    @instance().setDimensions dimensions

  @width: ->
    @instance().getWidth()

  @height: ->
    @instance().getHeight()


class ConfigImpl

  setDimensions: (dimensions) ->
    @width = dimensions.width
    @height = dimensions.height

  getWidth: ->
    @width ? 0

  getHeight: ->
    @height ? 0
