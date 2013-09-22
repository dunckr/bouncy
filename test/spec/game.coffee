describe 'Game', ->

  beforeEach ->
    @game = new bouncy.Game()

  it 'should have stage', ->
    expect(@game.stage).toBeDefined()

  it 'should have an name', ->
    expect(@game.name).toEqual 'game'

  it 'should calculate stage dimensions', ->
    d = @game.determineDimensions()
    expect(d.width).toEqual 400
    expect(d.height).toEqual 300
