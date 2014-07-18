require 'spec_helper'

describe Canvas do

  it 'should render the building block' do
    graphics = double("graphics")
    frame = double("frame")
    allow(frame).to receive(:setDefaultCloseOperation)
    allow(frame).to receive(:add)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:setSize)
    allow(frame).to receive(:setVisible)
    allow(frame).to receive(:addMouseListener)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    building_block=Line.new(10,10,100,100,Color.red)
    expect(frame).to receive(:repaint)
    canvas=Canvas.new
    canvas.add(building_block)
  end
  it 'should draw the line' do
    graphics = double("graphics"){}
    building_block=Line.new(10,10,100,100,Color.red)
    expect(graphics).to receive(:setColor)
    expect(graphics).to receive(:drawLine)
    canvas=Canvas.new
    canvas.add(building_block)
    canvas.draw(graphics)
  end

end