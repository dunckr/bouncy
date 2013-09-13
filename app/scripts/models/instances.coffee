class bouncy.Instances

  _instance = undefined

  @instance: ->
    _instance ?= new bouncy._Instances()

  @getBall: ->
    @instance().getBall()

  @createBall: (x,y) ->
    @instance().createBall x, y

class bouncy._Instances

  getBall: ->
    @ball

  createBall: (x,y) ->
    @ball = new bouncy.Ball x, y
