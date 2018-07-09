require 'selenium-webdriver'

# Star driver
driver = Selenium::WebDriver.for :chrome

# Navigate
driver.get('https://tiki.vn')

# Explicit wait
wait = Selenium::WebDriver::Wait.new(timeout: 30) # seconds
wait.until {
  driver.find_element(:css, "input[name='q']")
}

driver.find_element(:css, "input[name='q']").send_keys('tivi')
driver.find_element(:css, '.search-wrap > button').click

sleep(3)

