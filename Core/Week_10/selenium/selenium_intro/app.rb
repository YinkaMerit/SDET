require 'selenium-webdriver'

# Creates a chrome driver
chrome_driver = Selenium::WebDriver.for :chrome

# Tells the chrome drive to go to google
chrome_driver.get('https://www.toolsqa.com/automation-practice-form/')

sleep 3

# find_element: return one item, find_elements: returns array
chrome_driver.find_element(:link_text, 'Partial Link Test').click

chrome_driver.find_element(:name, 'firstname').send_keys 'first name'

sleep 5

# Loops through all the buttons avaliable
for i in 0..6 do
  chrome_driver.find_element(:id, "exp-#{i}").click
end

sleep 3
