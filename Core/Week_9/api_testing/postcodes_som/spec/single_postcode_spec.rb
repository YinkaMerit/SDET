require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new.single_postcode_service
      @postcodesio.single_postcode_result('b111by') #input a postcode
    end

    it "should respond with a status message of 200" do
      expect(@postcodesio.get_status).to eq 200
    end

    it "should have a results hash" do
      expect(@postcodesio.get_result).to be_kind_of Hash
    end

    it "should return a postcode between 5-7 in length"  do
      expect(@postcodesio.get_postcode.gsub(' ','').length).to be_between(5,7)
    end

    it "should return an quality key integer between 1-9" do
      expect(@postcodesio.get_result['quality']).to be_between(1,9)
      expect(@postcodesio.get_result['quality']).to be_kind_of Integer
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@postcodesio.get_result['eastings']).to be_kind_of Integer
    end

    it "should return an ordnance survey northings value as integer" do
      expect(@postcodesio.get_result['northings']).to be_kind_of Integer
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(["England", "Scotland", "Wales", "Northern Ireland"]).to include @postcodesio.get_result['country']
    end

    it "should return a string value for NHS authority " do
      expect(@postcodesio.get_result['nhs_ha']).to be_kind_of String
    end

    it "should return a longitude float value" do
      expect(@postcodesio.get_result['longitude']).to be_kind_of Float
    end

    it "should return a latitude float value" do
      expect(@postcodesio.get_result['latitude']).to be_kind_of Float
    end

    it "should return a parliamentary constituency string" do
      expect(@postcodesio.get_result['parliamentary_constituency']).to be_kind_of String
    end

    it "should return a european_electoral_region string" do
      expect(@postcodesio.get_result['european_electoral_region']).to be_kind_of String
    end

    it "should return a primary_care_trust string" do
      expect(@postcodesio.get_result['primary_care_trust']).to be_kind_of String
    end

    it "should return a region string" do
      expect(@postcodesio.get_result['region']).to be_kind_of String
    end

    it "should return a parish string" do
      expect(@postcodesio.get_result['parish']).to be_kind_of String
    end

    it "should return a lsoa string" do
      expect(@postcodesio.get_result['lsoa']).to be_kind_of String
    end

    it "should return a msoa string" do
      expect(@postcodesio.get_result['msoa']).to be_kind_of String
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      expect(@postcodesio.get_result['admin_district']).to be_kind_of  String
    end

    it "should return a incode string of three characters" do
      expect(@postcodesio.get_result['incode'].length).to eq 3
      expect(@postcodesio.get_result['incode']).to be_kind_of  String
    end
  end
end
