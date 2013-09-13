class bouncy.Text extends createjs.Text

  constructor: (text, x, y) ->
    @initialize text, '36px Arial', '#777'
    @x = x
    @y = y
