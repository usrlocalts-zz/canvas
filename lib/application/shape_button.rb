#renders a button
class ShapeButton
  def initialize x1,y1,width,height,color
    @label = "Button"
    @rectangle = Rectangle.new(x1,y1,width,height,color)
  end
  def render(graphics)
    @rectangle.render(graphics)
  end
  def clicked javaEvent
    Kernel.puts "#{@rectangle}: Button Clicked" if @rectangle.clicked?(javaEvent)
  end
end