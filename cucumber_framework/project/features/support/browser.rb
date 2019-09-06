require 'selenium-webdriver'
require 'byebug'

class Browser

  def open_chrome_browser
    Selenium::WebDriver::Chrome.driver_path= File.absolute_path("./chromedriver")
    args = ['--disable-notifications']
    options = Selenium::WebDriver::Chrome::Options.new(args: args)
    $driver = Selenium::WebDriver.for(:chrome, options: options)
    $driver.manage().window().maximize()
  end

  def launch_url(url)
    $driver.navigate.to(url)
  end

end