describe 'Line', ->

  beforeEach ->
    @line = new bouncy.Line 0, 0, 100, 100

  it 'should be between two points', ->
    expect(@line.x1).toEqual 0
    expect(@line.y1).toEqual 0
    expect(@line.x2).toEqual 100
    expect(@line.y2).toEqual 100

  it 'should determine if point is between a point on the line', ->
    pt = x: 50, y: 50
    expect(@line.containsPoint(pt)).toBeTruthy()

  it 'should determine if point is at the start of the line', ->
    pt = x: 0, y: 0
    expect(@line.containsPoint(pt)).toBeTruthy()

  it 'should determine if point is at the end of the line', ->
    pt = x: 100, y: 100
    expect(@line.containsPoint(pt)).toBeTruthy()

  it 'should determine if point has one point on the line', ->
    pt = x: 100, y: 200
    expect(@line.containsPoint(pt)).toBeFalsy()

  it 'should determine if point is NOT on the line', ->
    pt = x: 200, y: 200
    expect(@line.containsPoint(pt)).toBeFalsy()
