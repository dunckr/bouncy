describe 'Ball', ->

  beforeEach ->
    @ball = new bouncy.Ball()

  it 'should be defined', ->
    expect(@ball).toBeDefined()

  it 'should have variables', ->
    expect(@ball.speedX).toBe 0.1
    expect(@ball.speedY).toBe 0.1
    expect(@ball.x).toBe 0
    expect(@ball.y).toBe 0
    expect(@ball.graphics).toBeDefined()

  it 'should be able to move', ->
    expect(@ball.x).toBe 0
    @ball.move 10, 10
    expect(@ball.x).toBe 10

  # it 'should trigger an update on \'update\'', ->



  # it 'should move on an update', ->

  # describe 'has the behaviour that', ->

  #   it 'should bounce off walls', ->

  #   it 'should bounce off other balls', ->

  #   it 'should end if it touches the catch', ->

  #   it 'should end if it touches the line', ->