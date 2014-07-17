#Creates the canvas and draws the line
require 'java'
import java.awt.Color
puts "#{RUBY_PLATFORM}"
class Canvas < javax.swing.JPanel
  include java.awt.event.MouseListener
  include java.awt.event.KeyListener

  def initialize
    super
    @building_blocks = []
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    @frame.addMouseListener(self)
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


  def keyPressed(javaEvent)
    ;
  end

  def keyReleased(javaEvent)
    ;
  end

  def mouseEntered(javaEvent)
    ;
  end

  def mouseExited(javaEvent)
    ;
  end

  def mousePressed(javaEvent)
    ;
  end

  def mouseReleased(javaEvent)
    ;
  end

  def mouseClicked(javaEvent)
    @building_blocks.each do |building_block|
      puts 'im clicked' if building_block.clicked?(javaEvent)
    end
  end
end