require 'spec_helper'

describe 'ShapeButton' do

  it ' Is clicked ' do
    rectangle = Rectangle.new(10,10,100,100,Color.red)
    shape_button = ShapeButton.new(rectangle)
    javaEvent = double("javaEvent")
    allow(javaEvent).to receive(:getX){}.and_return(50)
    allow(javaEvent).to receive(:getY).and_return(50)
    expect(Kernel).to receive(:puts).and_return("#{@rectangle}: Button Clicked")
    shape_button.clicked(javaEvent)
  end
end