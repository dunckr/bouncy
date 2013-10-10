describe 'Config', ->

  it 'should have the intial dimensions of stage', ->
    expect(bouncy.Config.width()).toBe 500
    expect(bouncy.Config.height()).toBe 300

  it 'should have the updated dimensions of stage', ->
    bouncy.Config.setDimensions width:200, height: 200
    expect(bouncy.Config.width()).toBe 200
    expect(bouncy.Config.height()).toBe 200
