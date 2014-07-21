require 'spec_helper'

describe Canvas do

  it 'should render the building block' do
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

  it 'should be clicked for rectangle with parameters (10,10,100,100) ' do

    frame = double("frame")
    allow(frame).to receive(:setDefaultCloseOperation)
    allow(frame).to receive(:add)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:setSize)
    allow(frame).to receive(:setVisible)
    allow(frame).to receive(:addMouseListener)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    building_block=Line.new(10,10,100,100,Color.red)
    canvas=Canvas.new
    allow(canvas).to receive(:repaint)
    canvas.add(building_block)
    rectangle = Rectangle.new(10,10,100,100,Color.red)
    javaEvent = double("javaEvent")
    allow(javaEvent).to receive(:getX).and_return(50)
    allow(javaEvent).to receive(:getY).and_return(50)
    expect(rectangle.clicked?(javaEvent)).to eq(true)
  end
  it 'should not be clicked for rectangle with parameters (10,10,100,100) ' do

    frame = double("frame")
    allow(frame).to receive(:setDefaultCloseOperation)
    allow(frame).to receive(:add)
    allow(frame).to receive(:validate)
    allow(frame).to receive(:setSize)
    allow(frame).to receive(:setVisible)
    allow(frame).to receive(:addMouseListener)
    allow(javax.swing.JFrame).to receive(:new).and_return(frame)
    building_block=Line.new(10,10,100,100,Color.red)
    canvas=Canvas.new
    allow(canvas).to receive(:repaint)
    canvas.add(building_block)
    rectangle = Rectangle.new(10,10,100,100,Color.red)
    javaEvent = double("javaEvent")
    allow(javaEvent).to receive(:getX).and_return(150)
    allow(javaEvent).to receive(:getY).and_return(150)
    expect(rectangle.clicked?(javaEvent)).to eq(false)
  end

  it 'should draw the line' do
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
    canvas=Canvas.new
    allow(canvas).to receive(:repaint)
    canvas.add(building_block)
    expect(graphics).to receive(:drawLine)
    expect(graphics).to receive(:setColor)
    canvas.draw(graphics)
  end

end