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

  # containsPoint: (pt) ->
    # @x1 is pt.x or @y1 is pt or
    # @x2 is pt.x or @y2 is pt
#     #   #     if (pt.y1 < ball.y and pt.y2 > ball.y) or (pt.y1 > ball.y and pt.y2 < ball.y) and
#     #   #       (ball.x < (pt.y2 - pt.x1) * (ball.y - pt.y1) / (pt.y2 - pt.y1) + pt.x1)
