require 'selenium-webdriver'

# Star driver
driver = Selenium::WebDriver.for :chrome

# Navigate
driver.get('https://tiki.vn')

# Search element
driver.find_element(:css, "input[name='qc']")
