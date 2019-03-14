require 'spec_helper'

describe 'Exchange rates JSON test' do

  before(:all) do
    @exchange_rates = JSONParse.new('json_exchange_rates.json')
  end

  it "should be a hash" do
    expect(@exchange_rates.json_parse).to be_kind_of(Hash)
    # expect(@exchange_rates.json_parse).to be_kind_of(Hash)
  end

  it "should have a date string" do
    expect(@exchange_rates.get_date_value).to be_kind_of(String)
    # expect(@exchange_rates.json_parse["date"]).to be_kind_of(String)
  end

  it "should contain 31 rates" do
    expect(@exchange_rates.get_number_of_rates).to eq(31)
    expect(@exchange_rates.get_number_of_values).to eq(31)
    # expect(@exchange_rates.json_parse["rates"].keys.count).to eq(31)
  end

  it "should list all rates as floats" do
    @exchange_rates.get_rates.each_value do |value|
      expect(value).to be_kind_of(Float)
    # @exchange_rates.json_parse["rates"].each do |key,value|
    #   expect(value).to be_kind_of(Float)
    end
  end

  it "should list the base as EUR" do
      expect(@exchange_rates.get_base_value).to eq("EUR")
      # expect(@exchange_rates.json_parse["base"]).to eq("EUR")
  end

end
