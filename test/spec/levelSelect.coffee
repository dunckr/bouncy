describe 'LevelSelect', ->

  beforeEach ->
    @stage = new bouncy.Stage 'game', { width: 400, height: 300 }

  describe 'has a tutorial', ->

    beforeEach ->
      @levelSelect = new bouncy.LevelSelect @stage, 0

    it 'begins first', ->
      expect(@levelSelect.number).toBe 0

  describe 'generates levels', ->

    beforeEach ->
      @levelSelect = new bouncy.LevelSelect @stage, 2

    it 'should add the correct objects to stage', ->
      expect(@levelSelect.level.objects.length).toBe 3

    it 'should be able to progress to next level', ->
      expect(@levelSelect.level.objects.length).toBe 3
      @levelSelect.nextLevel()
      expect(@levelSelect.level.objects.length).toBe 4

    it 'should be able to restart', ->
      @levelSelect.restart()
      expect(@levelSelect.number).toBe 1
      expect(@levelSelect.level.objects.length).toBe 2

    it 'should be able to reset', ->
      spyOn(@stage,'clear')
      @levelSelect.resetLevel()
      expect(@stage.clear).toHaveBeenCalled()
