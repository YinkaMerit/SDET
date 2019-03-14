require 'selenium-webdriver'

describe 'Testing the Sparta Global Registration Page' do

  before(:all) do
    @registration_service = SpartaRegistration.new
    @registration_service.visit_registration_site
    @data = DataGenerator.new
    @firstname = @data.firstname
    @lastname = @data.lastname
    @age = @data.get_age
    @date_of_birth = @data.get_birthday
    @degree = "Mathematcs"
    @gender = @data.get_gender
    # @text
    @email = @data.get_email
    # @linkedIn
  end

  it "should land on the registration page" do
    expect(@registration_service.get_current_url).to eq @registration_service.registration_url
  end

  it "should accept first name" do
    @registration_service.input_first_name_field(@firstname)
    expect(@registration_service.get_first_name_field).to eq @firstname
  end

  it "should accept last name" do
    @registration_service.input_last_name_field(@lastname)
    expect(@registration_service.get_last_name_field).to eq @lastname
  end

  it "should accept age" do
    @registration_service.input_age(@age)
    expect(@registration_service.get_age).to eq @age.to_s
  end

  it "should accept date of birth" do
    @registration_service.input_date_of_birth @date_of_birth
    expect(@registration_service.get_date_of_birth).to eq @date_of_birth
  end

  it "should select a gender" do
    pending
  end

  it "should input degree" do
    @registration_service.input_degree(@degree)
    expect(@registration_service.get_degree).to eq @degree
  end

  it "should select a University" do
    @registration_service.select_university
    expect(@registration_service.is_a_university_selected).to be true

  end

  it "should accept address*" do
    pending
  end

  it "should accept address2" do
    pending
  end

  it "should accept city" do
    pending
  end

  it "should select a County" do
    pending
  end

  it "should input postcode" do
    pending
  end

  it "should return input email" do
    pending
  end

  it 'should return input skills' do
    pending
  end

  it 'should return phone number' do
    pending
  end

  it 'should return linkedIn URL' do
    pending
  end

  it 'should be able to upload file' do
    pending
  end

  it 'should accept SDET for stream' do
    pending
  end

  it 'should accept DevOps for stream' do
    pending
  end

  it 'should accept agree to terms and conditions' do
    pending
  end

  it 'should slide the experince from 0-100' do
    pending
  end

  it 'should sign in the application' do
    pending
  end

end
