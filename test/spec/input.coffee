describe 'Input', ->

  it 'has event for mouse up', ->
    spyOn(bouncy.Input, 'mouseUp').andReturn
    bouncy.Input.mouseUp()
    expect(bouncy.Input.mouseUp).toHaveBeenCalled()

  it 'has event for mouse down', ->
    spyOn(bouncy.Input, 'mouseDown').andReturn
    bouncy.Input.mouseDown()
    expect(bouncy.Input.mouseDown).toHaveBeenCalled()

  it 'has event for mouse move', ->
    spyOn(bouncy.Input, 'mouseMove').andReturn
    bouncy.Input.mouseMove()
    expect(bouncy.Input.mouseMove).toHaveBeenCalled()

