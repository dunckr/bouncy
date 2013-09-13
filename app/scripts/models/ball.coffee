class bouncy.Ball extends createjs.Shape

  _.extend @::, Backbone.Events

  constructor: (x,y,@speedX=0.1,@speedY=0.1,@fill='red',@size=40) ->
    super
    @fillIn()
    @events()

  fillIn: ->
    @graphics
      .beginFill(@fill)
      .drawCircle(0, 0, @size)
    @move 100, 100

  events: ->
    bouncy.Timer.on 'update', @update

  move: (x,y) ->
    @x = x
    @y = y

  update: =>
    @move @x+@speedX, @y+@speedY