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

  cross: (line) ->
    for ball in @getPts()
      if line.containsPoint ball
        return true
    false

  getPts: ->
    ball.getDimensions() for ball in @balls

  overlapping: (n,m) ->
    deltaX = n.x - m.x
    deltaY = n.y - m.y
    diff = n.size + m.size
    if (Math.abs(deltaX) < diff and Math.abs(deltaY) < diff) and
      (Math.sqrt(Math.pow(deltaX,2) + Math.pow(deltaY,2)) < diff)
        return true
    false

  congestion: ->
    for n in @balls
      for m in @balls
        if n.id isnt m.id and @overlapping n, m
          n.reverse()
          m.reverse()

  update: =>
    @congestion()
