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
    @instance().mouseDown()

  @mouseMove: (event) ->
    @instance().mouseMove event

class InputImpl

  _.extend @::, Backbone.Events

  mouseUp: (event) ->
    # console.log 'inside inputimpl - UP'
    @trigger 'mouseUp'

  mouseDown: (event) ->
    # console.log 'inside inputimpl - DOWN'
    @trigger 'mouseDown'

  mouseMove: (event) ->
    # console.log 'inside inputimpl - MOVE'
    @trigger 'mouseMove', event
