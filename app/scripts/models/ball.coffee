class bouncy.Ball extends createjs.Shape

  _.extend @::, Backbone.Events

  constructor: (x,y,@fill='red',@speedX=1,@speedY=1,@size=10) ->
    super
    @setup x,y
    @events()

  setup: (x,y) ->
    @graphics
      .beginFill(@fill)
      .drawCircle(0, 0, @size)
    @move x, y

  events: ->
    bouncy.Timer.on 'update', @update

  move: (x,y) ->
    @x += x
    @y += y

  update: =>
    if @x+(@size) >= 200 or @x-(@size) <= 0
      @speedX *= -1

    if @y+(@size) >= 150 or @y-(@size) <= 0
      @speedY *= -1

    for ball in bouncy.objects
      if @id != ball.id
        deltax = @x - ball.x
        deltay = @y - ball.y
        dist = @size
        if (Math.abs(deltax) < dist && Math.abs(deltay) < dist)
            if (Math.sqrt(deltax * deltax + deltay * deltay) < dist)
                @speedX *= -1
                @speedY *= -1
                ball.speedX *= -1
                ball.speedY *= -1

    @move @speedX, @speedY
