describe 'Ball', ->

  beforeEach ->
    @ball = new bouncy.Ball 0, 0

  it 'should have variables', ->
    expect(@ball.speedX).toBe 1
    expect(@ball.speedY).toBe 1
    expect(@ball.x).toBe 0
    expect(@ball.y).toBe 0
    expect(@ball.graphics).toBeDefined()

  it 'should be able to move', ->
    expect(@ball.x).toBe 0
    @ball.move 10, 10
    expect(@ball.x).toBe 10

  it 'should rebound on hitting sides', ->
    @ball.move 0, 0
    @ball.update()
    expect(@ball.speedX).toBe -1
    expect(@ball.speedY).toBe -1

  it 'should determine if NOT hitting another ball', ->
    another = new bouncy.Ball 100, 100
    expect(@ball.contains(another)).toBeFalsy()

  it 'should determine if hitting another ball', ->
    another = new bouncy.Ball 0, 0
    expect(@ball.contains(another)).toBeTruthy()

  it 'should determine if just hitting another ball\'s radius', ->
    another = new bouncy.Ball 7, 7
    expect(@ball.contains(another)).toBeTruthy()

  it 'should rebound on hitting other balls', ->

  it 'should get dimensions', ->
    expect(@ball.getDimensions()).toEqual x: 0, y: 0
