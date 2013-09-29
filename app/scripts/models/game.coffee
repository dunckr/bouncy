class bouncy.Game

  constructor: (@name='game') ->
    @init()

  init: ->
    bouncy.Config.setDimensions @determineDimensions()
    @stage = new bouncy.Stage @name

  determineDimensions: ->
    width: innerWidth, height: innerHeight
