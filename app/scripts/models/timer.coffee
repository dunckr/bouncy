class bouncy.Timer

  _instance = undefined

  @instance: ->
    _instance ?= new TimerImpl()

  @update: ->
    @instance().update()

  @on: (args...) ->
    @instance().on args...

class TimerImpl

  _.extend @::, Backbone.Events

  update: ->
    @trigger 'update'