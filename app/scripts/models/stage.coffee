class bouncy.Stage extends createjs.Stage

  constructor: (name, dimensions) ->
    @el = $ "##{name}"
    @initialize name
    @setDimensions dimensions
    # @setColor 'red'
    @setup()
    # @timer = new bouncy.Timer()

  setDimensions: (dimensions) ->
    @el.width(dimensions.width)
      .height(dimensions.height)

  setColor: (color) ->
    @el.css 'background-color', color

  setup: ->
    @enableDOMEvents true
    createjs.Touch.enable @
    createjs.Ticker.setFPS 24
    createjs.Ticker.addListener @

  add: (args...)->
    @addChild args...

  tick: ->
    # @timer.update()
    bouncy.Timer.update()
    @update()

  update: ->
    super

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
