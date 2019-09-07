require 'selenium-webdriver'
require 'byebug'
wait = Selenium::WebDriver::Wait.new(timeout: 30)
driver = Selenium::WebDriver.for :chrome
driver.manage().window().maximize()
driver.navigate.to('https://www.facebook.com')
wait.until{driver.find_element(css: '#email').displayed?}
driver.find_element(css: '#email').send_keys('tyler_kgiyzep_durden@tfbnw.net')
wait.until{driver.find_element(css: '#pass').displayed?}
driver.find_element(css: '#pass').send_keys('pass@123')
wait.until{driver.find_element(css: '#loginbutton').displayed?}
driver.find_element(css: '#loginbutton').click
wait.until{driver.find_element(css: '#left_nav_section_nodes').displayed?}
driver.find_element(css: '#left_nav_section_nodes').text.include?("Feed")
