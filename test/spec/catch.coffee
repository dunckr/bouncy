describe 'Catch', ->

  beforeEach ->
    stage = new bouncy.Stage 'game'
    @catch = new bouncy.Catch stage
    @catch.stage.balls = []

  it 'should determine if start and end are near', ->
    start = x1: 0, y1: 0
    end = x: 0.1, y: 0.1
    expect(@catch.isCircular(start,end)).toBeTruthy()
    expect(@catch.isCircular(end,start)).toBeTruthy()

  it 'should determine if start and end are not near', ->
    start = x1: 0, y1: 0
    end = x: 10, y: 10
    expect(@catch.isCircular(start,end)).toBeFalsy()

  describe 'when mouse pressed down', ->

    it 'should create a starting line', ->
      @catch.mouseDown stageX: 0, stageY: 0
      expect(@catch.lines.length).toBe 1
      expect(@catch.lines[0].x1).toBe 0
      expect(@catch.lines[0].y1).toBe 0
      expect(@catch.lines[0].x2).toBe 0
      expect(@catch.lines[0].y2).toBe 0

  describe 'when mouse is moving', ->

    beforeEach ->
      @catch.mouseDown stageX: 0, stageY: 0
      @catch.mouseMove stageX: 100, stageY: 100

    it 'should be adding points', ->
      expect(@catch.lines.length).toBe 2
      expect(@catch.lines[1].x1).toBe 0
      expect(@catch.lines[1].y1).toBe 0
      expect(@catch.lines[1].x2).toBe 100
      expect(@catch.lines[1].y2).toBe 100

    describe 'when mouse is released', ->

      beforeEach ->
        @catch.mouseUp stageX: 200, stageY: 200

      xit 'should stop adding points', ->
        expect(@catch.lines.length).toBe 2

