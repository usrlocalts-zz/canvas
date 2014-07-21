require 'spec_helper'

describe 'ShapeButton' do

  it ' Is clicked ' do
    shape_button = ShapeButton.new(10,10,100,100,Color.red)
    javaEvent = double("javaEvent")
    allow(javaEvent).to receive(:getX){}.and_return(50)
    allow(javaEvent).to receive(:getY).and_return(50)
    expect(Kernel).to receive(:puts).and_return("#{@rectangle}: Button Clicked")
    shape_button.clicked(javaEvent)
  end

  it 'should draw the line' do
    graphics = double("graphics")
    shape_button = ShapeButton.new(10,10,100,100,Color.red)
    expect(graphics).to receive(:drawLine).exactly(4).times
    expect(graphics).to receive(:setColor).exactly(4).times
    shape_button.render(graphics)
  end
end