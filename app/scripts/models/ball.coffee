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

  getDimensions: ->
    x: @x
    y: @y

  move: (x,y) ->
    @x += x
    @y += y

  reverse: ->
    @speedX *= -1
    @speedY *= -1

  contains: (ball) ->
    deltax = @x - ball.x
    deltay = @y - ball.y
    if Math.abs(deltax) < @size and Math.abs(deltay) < @size and
      Math.sqrt(Math.pow(deltax,2) + Math.pow(deltay,2)) < @size
        return true
    false

  boundaryCheck: ->
    height = bouncy.Config.height()
    width = bouncy.Config.width()
    if @x+@size >= width or @x-@size <= 0 or
      @y+@size >= height or @y-@size <= 0
        @reverse()

  update: =>
    @boundaryCheck()
    @move @speedX, @speedY
