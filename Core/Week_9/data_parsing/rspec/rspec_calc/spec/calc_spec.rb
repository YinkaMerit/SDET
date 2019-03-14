require 'spec_helper'

describe 'Testing basic calculator functions' do

  before(:each) do
    @Calc = Calc.new
  end

  #Add
  it "should add two numbers" do
    expect(@Calc.add(7,4)).to eq(11)
    expect(@Calc.add(7,4)).to be_kind_of(Integer)
    expect(@Calc.add(7,-4)).to eq(3)
  end

  #Subtract
  it "should subtract two numbers" do
    expect(@Calc.subtract(7,4)).to eq(3)
    expect(@Calc.subtract(7,4)).to be_kind_of(Integer)
    expect(@Calc.subtract(7,-4)).to eq(11)
  end

  #Multiply
  it "should mupliply two numbers" do
    expect(@Calc.multiply(7,4)).to eq(28)
    expect(@Calc.multiply(7,4)).to be_kind_of(Integer)
    expect(@Calc.multiply(7,-4)).to eq(-28)
  end

  #Divide
  it "should divide two numbers" do
    expect(@Calc.divide(8,4)).to eq(2)
    expect(@Calc.divide(2,4)).to be_kind_of(Integer)
    expect(@Calc.divide(8,-4)).to eq(-2)
  end

end
