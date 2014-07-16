require_relative './application/canvas'
require_relative './application/line'
require_relative './application/rectangle'
require 'java'

class Application

  def run
    canvas = Canvas.new
    rectangle = Rectangle.new(10,10,100,100,Color.red)
    canvas.add(rectangle)
    line = Line.new(1,23,124,156,Color.green)
    canvas.add(line)
  end
end