require 'selenium-webdriver'

class SeleniumQAToolsForm
  # All Caps is a constant
  FORM_URL = 'https://www.toolsqa.com/automation-practice-form/'

  def initialize
    # Sets up a driver for the chrome
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(FORM_URL)
  end

  def input_firstname ftext
    @chrome_driver.find_element(:name, "firstname").send_keys(ftext)
  end

  def input_lastname ltext
    @chrome_driver.find_element(:name, "lastname").send_keys(ltext)
  end

  def select_sex_value value
    @chrome_driver.find_element(:id, "sex-#{value}").click
  end

  def select_experience
    for value in 0..6
      @chrome_driver.find_element(:id, "exp-#{value}").click
    end
  end

  def input_date date
    @chrome_driver.find_element(:id, "datepicker").send_keys(date)
  end

  def select_profession
    for value in 0..1
      @chrome_driver.find_element(:id, "profession-#{value}").click
    end
  end

  def select_automation_tool
    for value in 0..2
      @chrome_driver.find_element(:id, "tool-#{value}").click
    end
  end

  def select_continent
    # get the select element
    continent = @chrome_driver.find_element(:id, "continents").click
    # get all the options for this element
    options = continent.find_elements(:tag_name, 'option')
    # select the options
    options.each do |option|
     option.click
    end
  end

  def select_command

  end

  def submit

  end

end

x = SeleniumQAToolsForm.new

x.visit_practice_form
x.input_firstname 'Yinka'
sleep 1
x.input_lastname 'Merit'
sleep 1
x.select_sex_value '0'
sleep 1
x.select_experience
sleep 1
x.input_date '18/02/2019'
sleep 1
x.select_profession
sleep 1
x.select_automation_tool
sleep 1
x.select_continent
