describe 'Level', ->

  beforeEach ->
    @level = new bouncy.Level 2

  it 'should be able to add objects', ->
    expect(@level.objects.length).toBe 3

  it 'should be able to create balls', ->
    expect(@level.randomise() instanceof  bouncy.Ball).toBeTruthy()

  it 'should calculate random speed', ->
    expect(@level.speed()).toBeLessThan 1
    expect(@level.speed()).toBeGreaterThan -1

  iit 'should calculate random position', ->
    expect(@level.position('height')).toBeLessThan 500
    expect(@level.position('height')).toBeGreaterThan 0

  it 'should calculate random color', ->
    expect(@level.color().length).toBe 7
    expect(@level.color().charAt(0)).toBe '#'
    expect(typeof @level.color().substr(1,6)).toBe 'string'
