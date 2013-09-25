class bouncy.LevelSelect

  constructor: (@stage,@number=0) ->
    if @number is 0 then @tutorial() else @generateLevel()

  tutorial: ->
    # TODO...

  generateLevel: ->
    @level = new bouncy.Level @number, @stage.dimensions
    c = new bouncy.Catch @stage # check if defined
    for object in @level.objects
      @stage.add object
      # should probably have objects global

  restart: ->
    @number = 1
    @generateLevel()

  nextLevel: ->
    @number++
    @generateLevel()

  resetLevel: ->
    @stage.clear()
    @generateLevel()
