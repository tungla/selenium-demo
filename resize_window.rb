require 'selenium-webdriver'

# Star driver
driver = Selenium::WebDriver.for :chrome

# Resize Window
max_width, max_height = driver.execute_script("return [window.screen.availWidth, window.screen.availHeight];")
driver.manage.window.resize_to(max_width, max_height)

sleep(3)