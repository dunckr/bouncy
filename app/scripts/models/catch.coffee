class bouncy.Catch

  _.extend @::, Backbone.Events

  constructor: (@stage) ->
    @events()
    @pts = []

    @midPt
    @oldMidPt
    @oldPt

  events: ->
    bouncy.Input.on 'mouseUp', @mouseUp
    bouncy.Input.on 'mouseDown', @mouseDown
    bouncy.Timer.on 'update', @update

  mouseDown: (event) =>
    bouncy.Input.on 'mouseMove', @mouseMove

    @start = @oldPt = new createjs.Point event.stageX, event.stageY
    @oldMidPt = @oldPt

  mouseMove: (event) =>
    @midPt = new createjs.Point( @oldPt.x + event.stageX>>1, @oldPt.y+event.stageY>>1)
    l = new bouncy.Line @midPt.x,@midPt.y,@oldMidPt.x,@oldMidPt.y
    @stage.add l
    @pts.push l

    @oldPt.x = event.stageX
    @oldPt.y = event.stageY
    @oldMidPt.x = @midPt.x
    @oldMidPt.y = @midPt.y

  mouseUp: (event) =>
    bouncy.Input.off 'mouseMove', @mouseMove

    @end = new createjs.Point event.stageX, event.stageY

    diffX = @start.x - @end.x
    diffY = @start.y - @end.y

    if diffX < 0.2 and diffY < 0.2
      console.log 'CIRCLE OF LIFE'

      # for ball in bouncy.objects
      #   for pt in @pts
      #     if (pt.y1 < ball.y and pt.y2 > ball.y) or (pt.y1 > ball.y and pt.y2 < ball.y) and
      #       (ball.x < (pt.y2 - pt.x1) * (ball.y - pt.y1) / (pt.y2 - pt.y1) + pt.x1)
      #         @stage.removeChild ball
      #         console.log @stage.getNumChildren()


    for pt in @pts
      @stage.removeChild pt
    @pts = []

  update: =>
    # if @pts?
      # for ball in bouncy.objects
      #   for pt in @pts
      #     if pt.hitTest ball.x, ball.y
      #       for pt in @pts
      #         @stage.removeChild pt
      #         @pts = []
