describe 'Line', ->

  beforeEach ->
    @line = new bouncy.Line 0, 0, 100, 100

  it 'should be between two points', ->
    expect(@line.x1).toEqual 0
    expect(@line.y1).toEqual 0
    expect(@line.x2).toEqual 100
    expect(@line.y2).toEqual 100
