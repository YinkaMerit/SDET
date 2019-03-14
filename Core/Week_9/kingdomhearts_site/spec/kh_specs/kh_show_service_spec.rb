require 'spec_helper'

describe 'KingdomHeartsAPI' do
  before(:all) do
    @api_call = KingdomHeartsAPI.new
    @character = @api_call.punk_show_service.get_beer(rand(1..25))
  end

  context "basic data types" do

    it "shouldd respond with an array" do
      expect(@character).to be_kind_of(Array)
    end

    it "should contain 1 character as a Hash" do
      expect(@character[0].class).to be Hash
      expect(@character.length).to eq 1

    end
  end
end
