class bouncy.Line extends createjs.Shape

  constructor: (@x1,@y1,@x2,@y2,@fill='red',@size=5) ->
    super
    @setup()

  setup: ->
    @graphics
      .clear()
      .setStrokeStyle(@size, 'round', 'round')
      .beginStroke(@fill)
      .moveTo(@x1,@y1)
      .curveTo(@x1,@y1,@x2,@y2)
