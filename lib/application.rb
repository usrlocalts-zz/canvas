require_relative './application/canvas'
require_relative './application/line'
require_relative './application/rectangle'
require_relative '../lib/application/shape_button'
require 'java'

class Application

  def run
    canvas = Canvas.new
    shape_button1 = ShapeButton.new(10,10,100,100,Color.red)
    shape_button2 = ShapeButton.new(100,100,200,200,Color.green)
    canvas.add(shape_button1)
    canvas.add(shape_button2)
  end
end