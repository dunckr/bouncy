class bouncy.Balls

  _.extend @::, Backbone.Events

  constructor: ->
    @balls = []
    @events()

  events: ->
    bouncy.Timer.on 'update', @update

  add: (ball) ->
    @balls.push ball

  length: ->
    @balls.length

  containsLine: (line) ->
    for ball in @getPts()
      if line.containsPoint ball
        return true
    false

  getPts: ->
    ball.getDimensions() for ball in @balls

  congestion: ->

  update: =>
    # go through all balls and check if they are hitting
