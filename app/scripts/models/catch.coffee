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

  mouseDown: (event) =>
    bouncy.Input.on 'mouseMove', @mouseMove

    @start = @oldPt = new createjs.Point event.stageX, event.stageY
    # @pts.push @start
    @oldMidPt = @oldPt

  mouseMove: (event) =>
    # drawing and creating points...
    @midPt = new createjs.Point( @oldPt.x + event.stageX>>1, @oldPt.y+event.stageY>>1)

    # l = new bouncy.Line @midPt.x,@midPt.y,@oldPt.x,@oldPt.y,@oldMidPt.x,@oldMidPt.y
    l = new bouncy.Line @midPt.x,@midPt.y,@oldMidPt.x,@oldMidPt.y
    @stage.add l
    @pts.push l
    # @pts.push @midPt



    @oldPt.x = event.stageX
    @oldPt.y = event.stageY
    @oldMidPt.x = @midPt.x
    @oldMidPt.y = @midPt.y
    # if any points get hit then stop and lose!

  mouseUp: (event) =>
    bouncy.Input.off 'mouseMove', @mouseMove

    @end = new createjs.Point event.stageX, event.stageY

    # if start and end are nearby then complete
    diffX = @start.x - @end.x
    diffY = @start.y - @end.y

    if diffX < 0.2 and diffY < 0.2
      console.log 'CIRCLE OF LIFE'

    #
    # once complete,
    # check if inside
    # get the max and min x y values
    # if inside then delete child
      # maxX = maxY = 0
      # minX = minY = 1000
      # for pt in @pts
      #   # console.log pt.x + ',' + pt.y
      #   maxX = pt.x if pt.x > maxX
      #   maxY = pt.y if pt.y > maxY
      #   minX = pt.x if pt.x < minX
      #   minY = pt.y if pt.y < minY

      # console.log "#{minX},#{maxX} and #{minY},#{maxY}"

      # for ball in bouncy.objects

      #   console.log "#{ball.x},#{ball.y}"

      #   if ball.x < maxX and ball.x > minX and ball.y < maxY and ball.y > maxY
      #     console.log 'BALL FUCKING INSIDE!!!!'

      for ball in bouncy.objects

        console.log @pts

        for pt in @pts


        #   i 0 - 5
        #   j 5,0,1,2,3,4
        #   poly[i].y <= pt.y && pt.y < poly[j].y) || (poly[j].y <= pt.y && pt.y < poly[i].y))
        # && (pt.x < (poly[j].x - poly[i].x) * (pt.y - poly[i].y) / (poly[j].y - poly[i].y) + poly[i].x
          # console.log "#{pt.x1},#{pt.y1} against #{pt.x},#{pt.y}"

          if (pt.y1 < ball.y and pt.y2 > ball.y) or (pt.y1 > ball.y and pt.y2 < ball.y) and
            (ball.x < (pt.y2 - pt.x1) * (ball.y - pt.y1) / (pt.y2 - pt.y1) + pt.x1)
              console.log 'this shit done happened!'
    @pts = []
