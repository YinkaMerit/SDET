require 'spec_helper'

describe 'Testing the exchange rates' do

  before(:all) do
    url = "http://data.fixer.io/api/latest?access_key=6232b3d2a9305660849cf1d14487dec3"
    @response = HTTParty.get(url)
    @file = ParseJson.new(@response.body).json_file
  end

  it "should response with the correct status code" do
    expect(@response.code).to eq 200
    expect(@response.message).to eq "OK"
  end

  it 'Should be a Hash' do
    expect(@file).to be_kind_of(Hash)
  end

  it "should contain the base as EUR" do
    expect(@file["base"]).to eq "EUR"
  end

  it "Should have a date string" do
    expect(@file["date"]).to be_kind_of(String)
  end


  it "should countain 168 rates" do
    expect(@file["rates"].keys.count).to eq 168
    expect(@file["rates"].values.count).to eq 168
  end

  it "should all rates should be Floats or Integers" do
    @file["rates"].each do |k,v|
      expect(v).to be_kind_of(Float).or be_kind_of(Integer)
    end
  end

end
