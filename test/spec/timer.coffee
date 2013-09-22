describe 'Timer', ->

  it 'should update', ->
    spyOn(bouncy.Timer, 'update')
    bouncy.Timer.update()
    expect(bouncy.Timer.update).toHaveBeenCalled()
