class bouncy.Catch

  _.extend @::, Backbone.Events

  constructor: (@stage) ->
    console.log 'inside bouncy catch'
    @events()

    @oldPt
    @oldMidPt
    @midPt

  events: ->
    bouncy.Input.on 'mouseUp', @mouseUp
    bouncy.Input.on 'mouseDown', @mouseDown

  # draw: ->
  #   console.log 'trying to draw'
    # @graphics
    #   # .clear()
    #   # .setStrokeStyle('grey', 'round', 'round')
    #   .beginStroke('black')
    #   .moveTo(@midPt.x, @midPt.y)
    #   .curveTo(@oldPt.x, @oldPt.y, @oldMidPt.x, @oldMidPt.y)
      # .beginFill('red')
      # .drawCircle(0, 0, 40)

  mouseUp: (event) =>
    bouncy.Input.off 'mouseMove', @mouseMove

  mouseDown: (event) =>
    @oldPt = new createjs.Point event.stageX, event.stageY
    @oldMidPt = @oldPt

    # @oldPt = new createjs.Point event.stageX, event.stageY
    # @oldMidPt = @oldPt

    bouncy.Input.on 'mouseMove', @mouseMove

  mouseMove: (event) =>
    # console.log event
    # event.target.addChild new bouncy.Ball event.stageX, event.stageY, @colors[Math.floor(Math.random()*@colors.length)]

    @midPt = new createjs.Point( @oldPt.x + event.stageX>>1, @oldPt.y+event.stageY>>1)

    event.target.addChild new bouncy.Line @midPt.x,@midPt.y,@oldPt.x,@oldPt.y,@oldMidPt.x,@oldMidPt.y

    @oldPt.x = event.stageX
    @oldPt.y = event.stageY
    @oldMidPt.x = @midPt.x
    @oldMidPt.y = @midPt.y


    # @midPt = new createjs.Point( @oldPt.x + event.stageX>>1, @oldPt.y+event.stageY>>1);
    # @draw()
    # event.target.addChild new bouncy.Line event.stageX, event.stageY
    # @oldPt.x = event.stageX
    # @oldPt.y = event.stageY
    # @oldMidPt.x = @midPt.x
    # @oldMidPt.y = @midPt.y

    # *****************************
    # *****************************
    # @down = false
    # @midPt
    # @oldPoint
    # @oldMidPt
    # @events()

  # draw: ->
  #   console.log 'drawing'
  #   @graphics
  #     # .clear()
  #     # .setStrokeStyle('grey', 'round', 'round')
  #     .beginStroke('black')
  #     .moveTo(@midPt.x, @midPt.y)
  #     .curveTo(@oldPt.x, @oldPt.y, @oldMidPt.x, @oldMidPt.y)
  #     # .beginFill('red')
  #     # .drawCircle(0, 0, 40)
  #   @x = 100
  #   @y = 100

  # events: ->
  #   bouncy.Input.on 'mouseUp', @mouseUp
  #   bouncy.Input.on 'mouseDown', @mouseDown
  #   # bouncy.Input.on 'mouseMove', @mouseMove

  # mouseUp: (event) =>
  #   @down = false

  # mouseDown: (event) =>
  #   @down = true
  #   console.log event
  #   @oldPt = new createjs.Point event.stageX, event.stageY
  #   @oldMidPt = @oldPt

  # mouseMove: (event) =>
  #   # console.log @mouseDown
  #   if @down

  #     @midPt = new createjs.Point( @oldPt.x + event.stageX>>1, @oldPt.y+event.stageY>>1);
  #     @draw()

  #     @oldPt.x = event.stageX
  #     @oldPt.y = event.stageY

  #     @oldMidPt.x = @midPt.x
  #     @oldMidPt.y = @midPt.y
