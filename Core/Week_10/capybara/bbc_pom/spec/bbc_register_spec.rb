require 'spec_helper'

day = '12'
month = '04'
year = '1996'

describe 'BBC Register page functionality' do
  before(:all) do
    @bbcsite = BBCSite.new
  end

  before(:each) do
    #Visit Homepage
    @bbcsite.bbc_homepage.visit_homepage
    #Click sign in link
    @bbcsite.bbc_homepage.click_sign_in
    #Click register link
    @bbcsite.bbc_register_page.click_register_link
  end

context "it should register a new account" do

  it "create an account for over 13" do
    @bbcsite.bbc_register_page.click_over_13
  end

  it "create an account for under 13" do
    @bbcsite.bbc_register_page.click_under_13
  end







end
