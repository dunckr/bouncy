describe 'Text', ->

  beforeEach ->
    @text = new bouncy.Text 'Hello', 100, 100

  it 'should have text', ->
    expect(@text.text).toBe 'Hello'

  it 'should have dimension', ->
    expect(@text.x).toBe 100
    expect(@text.y).toBe 100
