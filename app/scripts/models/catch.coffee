class bouncy.Catch

  _.extend @::, Backbone.Events

  constructor: (@stage) ->
    @events()
    @lines = []
    @proximity = 0.2

  isCircular: (start,end) ->
    console.log start
    console.log end
    diffX = start.x1 - end.x
    diffY = start.y1 - end.y
    if ~diffX < @proximity and ~diffY < @proximity
      return true
    false

  isTouching: ->
    for line in @lines
      if @stage.balls.containsLine line
        return true
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
    if @isCircular start, end
      # check if inside
      # console.log start.x1 + ' ' + end.x
      # console.log start.y1 + ' ' + end.y

      console.log 'complete'

    #   # pts = @stage.balls.getPts()

    #   # for ball in bouncy.objects
    #   #   for pt in @pts
    #   #     if (pt.y1 < ball.y and pt.y2 > ball.y) or (pt.y1 > ball.y and pt.y2 < ball.y) and
    #   #       (ball.x < (pt.y2 - pt.x1) * (ball.y - pt.y1) / (pt.y2 - pt.y1) + pt.x1)
    #   #         @stage.removeChild ball
    #   #         console.log @stage.getNumChildren()

    @reset()

  update: =>
    if @isTouching()
      @reset()

  reset: ->
    for line in @lines
      @stage.removeChild line
    @lines = []
    # @stage.removeChild line for line in @lines
    # @lines = []
