class bouncy.Stage extends createjs.Stage

  constructor: (@name) ->
    @el = $ "##{@name}"
    @init()

  init: ->
    @initialize @name
    @setDimensions()
    @setColor '#F7DFC7'
    @setup()
    @levelSelect = new bouncy.LevelSelect @, 5

  setDimensions: ->
    @el.width(bouncy.Config.width()).height(bouncy.Config.height())

  setColor: (color) ->
    @el.css 'background-color', color

  setup: ->
    @enableDOMEvents true
    createjs.Touch.enable @
    createjs.Ticker.setFPS 24
    createjs.Ticker.addListener @
    @addEventListener "stagemouseup", @handleMouseUp
    @addEventListener "stagemousedown", @handleMouseDown
    @addEventListener "stagemousemove", @handleMouseMove
    @balls = new bouncy.Balls()

  add: (item) ->
    if item instanceof bouncy.Ball
      @balls.add item
    @addChild item

  tick: ->
    bouncy.Timer.update()
    @update()

  handleMouseUp: (event) ->
    bouncy.Input.mouseUp event

  handleMouseDown: (event) ->
    bouncy.Input.mouseDown event

  handleMouseMove: (event) ->
    bouncy.Input.mouseMove event
