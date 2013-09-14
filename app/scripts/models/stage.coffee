class bouncy.Stage extends createjs.Stage

  constructor: (name, dimensions) ->
    @el = $ "##{name}"
    @initialize name
    @setDimensions dimensions
    # @setColor 'red'
    @setupEvents()

  setDimensions: (dimensions) ->
    @el.width(dimensions.width)
      .height(dimensions.height)

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

  update: ->
    super

  handleMouseUp: (event) ->
    bouncy.Input.mouseUp event

  handleMouseDown: (event) ->
    bouncy.Input.mouseDown event

  handleMouseMove: (event) ->
    bouncy.Input.mouseMove event

  # update: ->
  #   console.log 'updating'
  #   super()

  # constructor: (name, dimensions) ->
  #   @el = $ "##{name}"
  #   # @setDimensions dimensions
  #   # @setColor 'black'
  #   super name
  #   @apply @
  #   @setup()

  # setDimensions: (dimensions) ->
  #   @el.width(dimensions.width)
  #     .height(dimensions.height)

  # setColor: (color) ->
  #   @el.css 'background-color', color

  # setup: ->
  #   @autoClear = false
  #   @enableDOMEvents true
  #   createjs.Touch.enable @
  #   createjs.Ticker.setFPS 24
  #   createjs.Ticker.addListener @

  # add: (args...)->
  #   @addChild args...

  # tick: ->
  #   @update()

  # update: ->
  #   console.log 'updating'
  #   super()
