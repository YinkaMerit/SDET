require "spec_helper"

describe 'testing budget app' do
  before(:all) do
    @name = 'Yinka'
    @driver = Appium::Driver.new(opts, true)
    @driver.start_driver

  end

  after(:all) do
    @driver.driver_quit
  end
  it "should open the app to the homepage" do
    expect(@driver.find_element(:id, "protect.budgetwatch:id/action_settings").displayed?).to be true
  end

  it "should have the transaction option on the landing page" do
    expect(@driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].text).to eq "Budgets"
  end

  it "should access the budget page" do
    @driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].click
    expect(@driver.find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?).to be true
  end

  it "should be able to add a budget" do
    @driver.find_element(:id, "protect.budgetwatch:id/action_add").click
    @driver.find_element(:id, "protect.budgetwatch:id/budgetNameEdit").send_keys(@name)
    @driver.find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys('30.00')
    @driver.find_element(:id, "protect.budgetwatch:id/action_save").click
    expect(@driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[-2].text).to eq @name
    # expect(@drive.find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?).to be true
  end
end


describe 'testing budget app' do
  before(:all) do
    @name = 'Yinka'
    @account = "Test Account"
    @value = 300
    @note = "Test Note"
    @driver = Appium::Driver.new(opts, true)
    @driver.start_driver

  end

  after(:all) do
    @driver.driver_quit
  end
  it "should open the app to the homepage" do
    expect(@driver.find_element(:id, "protect.budgetwatch:id/action_settings").displayed?).to be true
  end

  it "should have the transaction option on the landing page" do
    expect(@driver.find_elements(:id, "protect.budgetwatch:id/menu")[1].text).to eq "Transactions"
  end

  it "should access the budget page" do
    @driver.find_elements(:id, "protect.budgetwatch:id/menu")[1].click
    expect(@driver.find_element(:id, "protect.budgetwatch:id/search_button").displayed?).to be true
  end

  it "should be able to add a transaction" do
    @driver.find_element(:id, "protect.budgetwatch:id/action_add").click
    @driver.find_element(:id, "protect.budgetwatch:id/nameEdit").send_keys @name
    @driver.find_element(:id, "protect.budgetwatch:id/accountEdit").send_keys @account
    @driver.find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys @value
    @driver.find_element(:id, "protect.budgetwatch:id/noteEdit").send_keys @note
    @driver.find_element(:id, "protect.budgetwatch:id/action_save").click
    # expect(@driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[-2].text).to eq @name
    # expect(@drive.find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?).to be true
  end
end
