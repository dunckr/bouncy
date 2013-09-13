describe 'Game', ->

  beforeEach ->
    @game = new bouncy.Game()

  it 'should have stage', ->
    expect(@game.stage).toBeDefined()

  it 'should have level number', ->
    expect(@game.levelNumber).toBe 0

  it 'should calculate the size of the stage', ->
    expect(@game.determineDimensions()).toEqual width: 500, height: 300