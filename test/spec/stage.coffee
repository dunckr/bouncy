describe 'Stage', ->

  beforeEach ->
    name = 'game'
    @html = "<canvas id='#{name}' width=500 height=300></canvas>"
    @dimensions = width: 500, height: 300
    @stage = new bouncy.Stage name, @dimensions
    @stage.el = $ @html

  it 'should have id', ->
    expect(@stage.id).toBeDefined()

  it 'should have canvas', ->
    expect(@stage.getNumChildren()).toBeGreaterThan 0

  it 'should have dimensions', ->
    @stage.setDimensions(@dimensions)
    expect(@stage.el.height()).toBe 300

  it 'should have background color', ->
    @stage.setColor('red')
    expect(@stage.el.css('background-color')).toBe 'red'

  it 'should be able to add child', ->
    shape = new createjs.Shape()
    num = @stage.getNumChildren()
    @stage.add shape
    expect(@stage.getNumChildren()).toBe num + 1
