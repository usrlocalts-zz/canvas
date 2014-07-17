#Renders a rectangle
class Rectangle

  def initialize x1, y1, width, height, color
  @x1 = x1
  @y1 = y1
  @height = height
  @width = width
    @lines = [Line.new(x1, y1, x1+width, y1, color),
              Line.new(x1+width, y1, x1+width, y1+height, color),
              Line.new(x1+width, y1+height, x1, y1+height, color),
              Line.new(x1, y1+height, x1, y1, color)]
  end

  def render graphics
    @lines.each do |line|
      line.render(graphics)
    end
  end

  def clicked? javaEvent
    x = javaEvent.getX
    y = javaEvent.getY
    y-= 20
    (x<=(@x1+@width)&&x>=@x1)&&((y<=(@y1+@height)&&y>=@y1))
  end
end