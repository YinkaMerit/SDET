require 'spec_helper'

describe 'PunkAPI' do
  before(:all) do
    @api_call = PunkAPI.new
    @beer = @api_call.punk_show_service.get_beer(rand(1..25))
  end

  context "basic data types" do

    it "shouldd respond with an array" do
      expect(@beer).to be_kind_of(Array)
    end

    it "should contain 1 beer as a Hash" do
      expect(@beer[0].class).to be Hash
      expect(@beer.length).to eq 1

    end
  end
end
