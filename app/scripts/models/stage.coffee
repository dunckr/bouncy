class bouncy.Stage extends createjs.Stage

  constructor: (@name, @dimensions) ->
    @el = $ "##{@name}"
    @setup()

  setup: ->
    @initialize @name
    @setDimensions @dimensions
    @setColor '#F7DFC7'
    @setupEvents()
    @levelSelect = new bouncy.LevelSelect @, 5, @dimensions

  setDimensions: (dimensions) ->
    @el.width(dimensions.width).height(dimensions.height)

  setColor: (color) ->
    @el.css 'background-color', color

  setupEvents: ->
    @enableDOMEvents true
    createjs.Touch.enable @
    createjs.Ticker.setFPS 24
    createjs.Ticker.addListener @
    @addEventListener "stagemouseup", @handleMouseUp
    @addEventListener "stagemousedown", @handleMouseDown
    @addEventListener "stagemousemove", @handleMouseMove

  add: (args...)->
    @addChild args...

  tick: ->
    bouncy.Timer.update()
    @update()

  handleMouseUp: (event) ->
    bouncy.Input.mouseUp event

  handleMouseDown: (event) ->
    bouncy.Input.mouseDown event

  handleMouseMove: (event) ->
    bouncy.Input.mouseMove event
