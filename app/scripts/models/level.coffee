class bouncy.Level

  constructor: (@number) ->
    @objects = []
    @generate()

  generate: ->
    @objects.push @randomise() for n in [0..@number]

  randomise: ->
    new bouncy.Ball @position('width'),@position('height'), @color(), @speed(), @speed()

  color: ->
    "##{(0x1000000+(Math.random())*0xffffff).toString(16).substr(1,6)}"

  position: (dimension)->
    Math.floor(Math.random() * (bouncy.Config[dimension]()+ 1))

  speed: ->
    (Math.random() * 2) - 1

