class bouncy.Catch extends createjs.Shape

  _.extend @::, Backbone.Events

  constructor: ->
    super
    @events()

    @oldPt
    @oldMidPt
    @midPt

    @colors =[
            "aliceblue",
            "antiquewhite",
            "aqua",
            "aquamarine",
            "azure",
            "beige",
            "bisque",
            "black",
            "blanchedalmond",
            "blue",
            "blueviolet",
            "brown",
            "burlywood",
            "cadetblue",
            "chartreuse",
            "chocolate",
            "coral",
            "cornflowerblue",
            "cornsilk",
            "crimson",
            "cyan",
            "darkblue",
            "darkcyan",
            "darkgoldenrod",
            "darkgray",
            "darkgreen",
            "darkkhaki",
            "darkmagenta",
            "darkolivegreen",
            "darkorange",
            "darkorchid",
            "darkred",
            "darksalmon",
            "darkseagreen",
            "darkslateblue",
            "darkslategray",
            "darkturquoise",
            "darkviolet",
            "deeppink",
            "deepskyblue",
            "dimgray",
            "dodgerblue",
            "firebrick",
            "floralwhite",
            "forestgreen",
            "fuchsia",
            "gainsboro",
            "ghostwhite",
            "gold",
            "goldenrod" ]

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
    # @oldPt = new createjs.Point event.stageX, event.stageY
    # @oldMidPt = @oldPt


    bouncy.Input.on 'mouseMove', @mouseMove



  mouseMove: (event) =>
    console.log 'handling mouse move'
    event.target.addChild new bouncy.Ball event.stageX, event.stageY, @colors[Math.floor(Math.random()*@colors.length)]


    # @midPt = new createjs.Point( @oldPt.x + event.stageX>>1, @oldPt.y+event.stageY>>1);
    # @draw()
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
