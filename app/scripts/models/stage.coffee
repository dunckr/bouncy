class bouncy.Stage extends createjs.Stage

  constructor: (@name, @dimensions) ->
    @el = $ "##{@name}"
    @init()

  init: ->
    @initialize @name
    @setDimensions @dimensions
    @setColor '#F7DFC7'
    @setup()
    @levelSelect = new bouncy.LevelSelect @, 5, @dimensions

  setDimensions: (dimensions) ->
    @el.width(dimensions.width).height(dimensions.height)

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
