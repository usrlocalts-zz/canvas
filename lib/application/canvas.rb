#Creates the canvas and draws the line
require 'java'
import java.awt.Color
puts "#{RUBY_PLATFORM}"
class Canvas < javax.swing.JPanel
  def initialize
    @building_blocks = []
    super
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    @frame.add(self)
    @frame.validate

  end

  def paintComponent(graphics)
    super(graphics)
    draw(graphics)
  end

  def draw(graphics)
    @building_blocks.each do |building_block|
      building_block.render(graphics)
    end
  end

  def add(building_block)
    @building_blocks<<building_block
    @frame.repaint
  end

end