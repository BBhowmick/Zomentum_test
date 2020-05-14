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

  def commonwait(element)
    $wait = Selenium::WebDriver::Wait.new(timeout: 30)
    $wait.until{@driver.find_element(css: element).displayed?}
    self.scroll(@driver.find_element(css: element))
    @driver.execute_script('window.scrollBy(0,-30)')
    sleep 1
  end
end
