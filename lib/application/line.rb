#Models a line and draw it on canvas
class Line
  def initialize x1,y1,x2,y2,color
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
    @color = color

  end

    def render graphics
      graphics.setColor(@color)
      graphics.drawLine(@x1,@y1,@x2,@y2)
  end

end