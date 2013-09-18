class bouncy.Game

  constructor: (@id='game') ->
    @init()
    @setLevelNumber()
    @levelSetup()

  init: ->
    @stage = new bouncy.Stage @id, @determineDimensions()

  setLevelNumber: ->
    @levelNumber = 0

  determineDimensions: ->
    # todo dynamically
    width: 800, height: 400

  # to refactor
  levelSetup: ->
    # circle = new createjs.Shape();
    # circle.graphics.beginFill("red").drawCircle(0, 0, 40);
    # circle.x = circle.y = 50;
    # @stage.addChild circle

    # circle2 = new createjs.Shape();
    # circle2.graphics.beginFill("black").drawCircle(0, 0, 10);
    # circle2.x = circle2.y = 100;i
    # @stage.addChild circle2
    # #  probem in ball...
    # console.log 'in levelselect'

    # moving = =>
    #   circle2.x += 10

    #   if circle2.x > @stage.canvas.width
    #     circle2.x = 0

    # setInterval moving, 1000

    bouncy.objects = []
    bouncy.objects.push new bouncy.Ball 40, 50, 'blue', 0.5, 0.5
    # bouncy.objects.push new bouncy.Ball 10, 50, 'yellow'
    # bouncy.objects.push new bouncy.Ball 40, 30, 'green'
    # bouncy.objects.push new bouncy.Ball 20, 10, 'red'
    # bouncy.objects.push new bouncy.Ball 60, 70, 'black'
    # bouncy.objects.push new bouncy.Ball 65, 70, 'orange'
    # bouncy.objects.push new bouncy.Ball 140, 10, 'pink'
    # bouncy.objects.push new bouncy.Ball 90, 90, 'purple'



    # @stage.addChild new bouncy.Ball 40, 140, 'green'
    # @stage.addChild new bouncy.Ball 30, 50, 'red'
    # @stage.addChild new bouncy.Ball 120, 1, 'black'

    for ball in bouncy.objects
      @stage.add ball


    c = new bouncy.Catch(@stage)

    # @stage.addChild new bouncy.Text 'hello world', 100,100


    # @stage.addChild new bouncy.Text 'test 123', 300,250


    # @stage.addChild new bouncy.Text 'agin 123', 40,10

    # @stage.addChild new createjs.Rectangle 0, 0, 100, 100

    # @stage.addChild new createjs.Rectangle 100, 150, 100, 100
    # @stage.update()