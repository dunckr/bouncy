class bouncy.Catch

  _.extend @::, Backbone.Events

  constructor: ->
    @down = false
    @oldPoint
    @oldMidPt
    @events()

  events: ->
    bouncy.Input.on 'mouseUp', @mouseUp
    bouncy.Input.on 'mouseDown', @mouseDown
    bouncy.Input.on 'mouseMove', @mouseMove

  mouseUp: (event) =>
    @down = false

  mouseDown: (event) =>
    @down = true
    # oldPt = new createjs.Point @stage.mouseX, @stage.mouseY
    # oldMidPt = oldPt

  mouseMove: (event) =>
    # console.log @mouseDown
    if @down
      console.log event
      # @stage.add new createjs.Point event.stageX, event.stageY
      # midPt = new createjs.Point @oldPt.x + event.stageX>>1, @oldPt.y+event.stageY>>1
      # @stage
      #   .graphics
      #   .setStrokeStyle(stroke, 'round', 'round')
      #   .beginStroke('black')
      #   .moveTo(midPt.x, midPt.y)
      #   .curveTo(@oldPt.x, @oldPt.y, @oldMidPt.x, @oldMidPt.y)

      # @oldPt.x = event.stageX
      # @oldPt.y = event.stageY

      # @oldMidPt.x = midPt.x
      # @oldMidPt.y = midPt.y
