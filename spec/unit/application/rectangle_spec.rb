require 'spec_helper'

describe Rectangle do

  it 'passes the rectangle parameters 10,10,100,100 to Canvas' do
    rectangle = Rectangle.new(10,10,100,100,Color.red)
    graphics = double("graphics")
    expect(graphics).to receive(:setColor).with(Color.red).exactly(4).times
    expect(graphics).to receive(:drawLine).with(10,10,110,10)
    expect(graphics).to receive(:drawLine).with(110,10,110,110)
    expect(graphics).to receive(:drawLine).with(110,110,10,110)
    expect(graphics).to receive(:drawLine).with(10,110,10,10)
    rectangle.render(graphics)
  end
  it 'checks whether clicked or not' do
    rectangle = Rectangle.new(10,10,100,100,Color.red)
    javaEvent = double("javaEvent")
    allow(javaEvent).to receive(:getX).and_return(50)
    allow(javaEvent).to receive(:getY).and_return(50)
    expect(rectangle.clicked?(javaEvent)).to eq(true)
  end
end