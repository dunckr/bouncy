class bouncy.Line extends createjs.Shape

  constructor: (@x1,@y1,@x2,@y2,@fill='red',@size=10) ->
    super
    @setup()

  setup: ->
    @graphics
      .clear()
      .setStrokeStyle(5, 'round', 'round')
      .beginStroke(@fill)
      .moveTo(@x1,@y1)
      .curveTo(@x1,@y1,@x2,@y2)
      # .curveTo(@oldPt.x, @oldPt.y, @oldMidPt.x, @oldMidPt.y)


  # constructor: (@x1,@y1,x2,y2,@x3,@y3,@fill='red',@size=10) ->
  #   super
  #   @setup @x1,@y1,x2,y2,@x3,@y3

  # setup: (@x1,@y1,x2,y2,@x3,@y3) ->
  #   @graphics
  #     .clear()
  #     .setStrokeStyle(5, 'round', 'round')
  #     .beginStroke(@fill)
  #     .moveTo(@x1,@y1)
  #     .curveTo(x2,y2,@x3,@y3)
  #     # .curveTo(@oldPt.x, @oldPt.y, @oldMidPt.x, @oldMidPt.y)
