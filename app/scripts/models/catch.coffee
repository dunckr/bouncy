class bouncy.Catch extends createjs.Shape

  _.extend @::, Backbone.Events

  constructor: ->
    super
    @events()

  events: ->
    bouncy.Input.on 'mouseUp', @mouseUp
    bouncy.Input.on 'mouseDown', @mouseDown
    # bouncy.Input.on 'mouseMove', @mouseMove

  mouseUp: (event) =>
    bouncy.Input.off 'mouseMove', @mouseMove

  mouseDown: (event) =>
    bouncy.Input.on 'mouseMove', @mouseMove

  mouseMove: (event) =>
  #   if @pressed is true
    console.log 'handling mouse move'


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
