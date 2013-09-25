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

  containsPoint: (pt) ->
    (@y1 <= pt.y and @y2 >= pt.y) or
    (@y1 >= pt.y and @y2 <= pt.y) and
    (pt.x < (@y2 - @x1) * (pt.y - @y1) / @y2 - @y1) + @x1
