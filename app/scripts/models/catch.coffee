class bouncy.Catch

  _.extend @::, Backbone.Events

  constructor: (@stage) ->
    @events()


    @start
    @pts = []
    @end

    @oldPt
    @oldMidPt
    @midPt

  events: ->
    bouncy.Input.on 'mouseUp', @mouseUp
    bouncy.Input.on 'mouseDown', @mouseDown


  mouseUp: (event) =>
    @end = new createjs.Point event.stageX, event.stageY

    diffX = @start.x - 0
    diffY = @start.y - 0

    if diffX < 0.2 and diffY < 0.2
      console.log 'CIRCLE OF LIFE!!!'
      console.log diffX + ' ' + diffY

    @pts = []


    bouncy.Input.off 'mouseMove', @mouseMove

  mouseDown: (event) =>
    @start = @oldPt = new createjs.Point event.stageX, event.stageY
    @oldMidPt = @oldPt

    # @oldPt = new createjs.Point event.stageX, event.stageY
    # @oldMidPt = @oldPt

    bouncy.Input.on 'mouseMove', @mouseMove

  mouseMove: (event) =>
    # console.log event
    # event.target.addChild new bouncy.Ball event.stageX, event.stageY, @colors[Math.floor(Math.random()*@colors.length)]

    @midPt = new createjs.Point( @oldPt.x + event.stageX>>1, @oldPt.y+event.stageY>>1)
    @pts.push @midPt

    event.target.addChild new bouncy.Line @midPt.x,@midPt.y,@oldPt.x,@oldPt.y,@oldMidPt.x,@oldMidPt.y

    @oldPt.x = event.stageX
    @oldPt.y = event.stageY
    @oldMidPt.x = @midPt.x
    @oldMidPt.y = @midPt.y


    for ball in bouncy.objects
      # console.log "#{@id} , #{ball.id}"
      for pt in @pts
        if ball.x is pt.x and ball.y is pt.y
          console.log 'BATTLESHIP DOWN!!!'


