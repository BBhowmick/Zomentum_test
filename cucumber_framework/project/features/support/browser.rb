require 'selenium-webdriver'
require 'byebug'

class Browser

  def open_chrome_browser
    Selenium::WebDriver::Chrome.driver_path= File.absolute_path("./chromedriver")
    $driver = Selenium::WebDriver.for :chrome
    $driver.manage().window().maximize()
  end

  def launch_url
    $driver.navigate.to('https://www.facebook.com')
  end

end