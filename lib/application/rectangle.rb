#Renders a rectangle
class Rectangle

  def initialize x1, y1, width, height, color
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

end