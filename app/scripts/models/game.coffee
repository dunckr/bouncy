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
    width: 1000, height: 500



  # to refactor
  levelSetup: ->
    # circle = new createjs.Shape();
    # circle.graphics.beginFill("red").drawCircle(0, 0, 40);
    # circle.x = circle.y = 50;
    # @stage.addChild circle

    # circle2 = new createjs.Shape();
    # circle2.graphics.beginFill("black").drawCircle(0, 0, 40);
    # circle2.x = circle2.y = 100;
    # @stage.addChild circle2
    #  probem in ball...
    console.log 'in levelselect'


    # @stage.addChild new bouncy.Ball 100, 100
    @stage.addChild new bouncy.Ball 200, 200

    # @stage.addChild new bouncy.Text 'hello world', 100,100


    # @stage.addChild new bouncy.Text 'test 123', 300,250


    # @stage.addChild new bouncy.Text 'agin 123', 40,10

    # @stage.addChild new createjs.Rectangle 0, 0, 100, 100

    # @stage.addChild new createjs.Rectangle 100, 150, 100, 100


    console.log @stage.getNumChildren()
    # @stage.update()