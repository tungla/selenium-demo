require 'selenium-webdriver'

p DateTime.now.strftime("%d/%m/%Y %H:%M:%S")


# Star driver
driver = Selenium::WebDriver.for :chrome

# Navigate
driver.get('https://tiki.vn')

# Implicit wait
# driver.manage.timeouts.implicit_wait = 30

# Search element
# driver.find_element(:css, "input[name='q']")

# Explicit wait
wait = Selenium::WebDriver::Wait.new(timeout: 30) # seconds
wait.until { driver.find_element(:css, "input[name='q']").displayed? }
