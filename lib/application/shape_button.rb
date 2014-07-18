#renders a button
class ShapeButton
  def initialize rectangle
    @label = "Button"
    @rectangle = rectangle
  end
  def render(graphics)
    @rectangle.render(graphics)
  end
  def clicked javaEvent
    Kernel.puts "#{@rectangle}: Button Clicked" if @rectangle.clicked?(javaEvent)
  end
end