class bouncy.Ball extends createjs.Shape

  _.extend @::, Backbone.Events

  constructor: (x,y,@fill='red',@speedX=0.1,@speedY=0.1,@size=10) ->
    super
    @setup(x,y)
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
    @move @speedX, @speedY

    # put some bouncy shit in here 
    # then stick into behaviour