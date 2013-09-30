class bouncy.Catch

  _.extend @::, Backbone.Events

  constructor: (@stage) ->
    @events()
    @lines = []

  isCircular: (start,end) ->
    diffX = start.x1 - end.x2
    diffY = start.y1 - end.y2
    if ~diffX < 0.1 and ~diffY < 0.1
      return true
    false

  isTouching: ->
    for line in @lines
      console.log @stage.balls.length
      for ball in @stage.balls
        console.log 'he'
        # console.log @stage.balls.test()
      # if @stage.balls.containsLine line

        # return true
    false

  events: ->
    bouncy.Input.on 'mouseUp', @mouseUp
    bouncy.Input.on 'mouseDown', @mouseDown
    bouncy.Timer.on 'update', @update

  mouseDown: (event) =>
    bouncy.Input.on 'mouseMove', @mouseMove
    @lines.push new bouncy.Line event.stageX, event.stageY, event.stageX, event.stageY

  mouseMove: (event) =>
    prev = @lines[@lines.length-1]
    mid = new createjs.Point prev.x1 + event.stageX >> 1, prev.y1 - event.stageY >> 1
    curr = new bouncy.Line prev.x2, prev.y2, event.stageX, event.stageY
    @lines.push curr
    @stage.add curr

  mouseUp: (event) =>
    bouncy.Input.off 'mouseMove', @mouseMove
    start = @lines[0]
    end = new createjs.Point event.stageX, event.stageY
    # if @isCircular start, end


    #   # pts = @stage.balls.getPts()

    #   # for ball in bouncy.objects
    #   #   for pt in @pts
    #   #     if (pt.y1 < ball.y and pt.y2 > ball.y) or (pt.y1 > ball.y and pt.y2 < ball.y) and
    #   #       (ball.x < (pt.y2 - pt.x1) * (ball.y - pt.y1) / (pt.y2 - pt.y1) + pt.x1)
    #   #         @stage.removeChild ball
    #   #         console.log @stage.getNumChildren()

    # for pt in @pts
    #   @stage.removeChild pt
    # @pts = []

  update: =>
    if @isTouching()
      @stage.removeChild line for line in @lines
      @line = []