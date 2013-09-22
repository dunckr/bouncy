class bouncy.Game

  constructor: (@name='game') ->
    @init()

  init: ->
    @stage = new bouncy.Stage @name, @determineDimensions()

  determineDimensions: ->
    width: innerWidth, height: innerHeight
