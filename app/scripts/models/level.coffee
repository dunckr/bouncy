class bouncy.Level

  constructor: (@number,@dimensions) ->
    @objects = []
    @generate()

  generate: ->
    @objects.push @randomise() for n in [0..@number]

  randomise: ->
    new bouncy.Ball @position(),@position(), @color(), @speed(), @speed()

  color: ->
    "##{(0x1000000+(Math.random())*0xffffff).toString(16).substr(1,6)}"

  position: ->
    Math.floor(Math.random() * (@dimensions.height + 1))

  speed: ->
    Math.random() * (2) - 1

