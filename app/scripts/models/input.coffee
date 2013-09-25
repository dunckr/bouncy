class bouncy.Input

  _instance = undefined

  @instance: ->
    _instance ?= new InputImpl()

  @on: (args...) ->
    @instance().on args...

  @off: (args...) ->
    @instance().off args...

  @mouseUp: (event) ->
    @instance().mouseUp event

  @mouseDown: (event) ->
    @instance().mouseDown event

  @mouseMove: (event) ->
    @instance().mouseMove event

class InputImpl

  _.extend @::, Backbone.Events

  mouseUp: (event) ->
    @trigger 'mouseUp', event

  mouseDown: (event) ->
    @trigger 'mouseDown', event

  mouseMove: (event) ->
    @trigger 'mouseMove', event
