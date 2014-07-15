require 'java'

puts "#{RUBY_PLATFORM}"
class Canvas < javax.swing.JPanel

  def initialize
    super
    @frame = javax.swing.JFrame.new("Canvas")
    @frame.setDefaultCloseOperation(javax.swing.JFrame::EXIT_ON_CLOSE)
    @frame.setSize(800, 600)
    @frame.setVisible(true)
    @frame.add(self)
  end


  def paintComponent(graphics)
    super(graphics)
  end
end

canvas = Canvas.new
