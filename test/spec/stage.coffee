describe 'Stage', ->

  beforeEach ->
    name = 'game'
    @html = "<canvas id='#{name}' width=500 height=300></canvas>"
    dimensions = width: 500, height: 300
    @stage = new bouncy.Stage name, dimensions
    @stage.el = $ @html

  it 'should have id', ->
    expect(@stage.id).toBeDefined()

  # TODO...
  xit 'should have dimensions', ->
    expect(@stage.el.html()).toBe 500
    expect(@stage.el.height()).toBe 300

  it 'should have canvas', ->
    expect(@stage.getNumChildren()).toBe 0

  it 'should be able to add child', ->
    shape = new createjs.Shape()
    @stage.add shape
    expect(@stage.getNumChildren()).toBe 1
