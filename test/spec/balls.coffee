describe 'Balls', ->

  beforeEach ->
    @balls = new bouncy.Balls()

  it 'should be defined', ->
    expect(@balls).toBeDefined()

  describe 'can add balls', ->

    beforeEach ->
      @balls.add new bouncy.Ball 100, 100
      @balls.add new bouncy.Ball 200, 200

    it 'should be able to add balls', ->
      expect(@balls.length()).toBe 2

    it 'should get current points', ->
      expect(@balls.getPts()).toEqual
      [
          x:100, y:100
        ,
          x:200, y:200
      ]

    it 'should show hit if no balls on a line', ->
      line = new bouncy.Line 0, 0, 100, 100
      expect(@balls.cross(line)).toBeTruthy()

    it 'should NOT show hit if no balls on a line', ->
      line = new bouncy.Line 250, 250, 300, 300
      expect(@balls.cross(line)).toBeFalsy()

    it 'should determine if two balls are not overlapping', ->
      n = new bouncy.Ball 0, 0
      m = new bouncy.Ball 100, 100
      expect(@balls.overlapping(n,m)).toBeFalsy()

    it 'should determine if two balls are overlapping', ->
      n = new bouncy.Ball 0, 0
      m = new bouncy.Ball 12, 12
      expect(@balls.overlapping(n,m)).toBeTruthy()
