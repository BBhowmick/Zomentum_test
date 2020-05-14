class FileUtility

  $wait = Selenium::WebDriver::Wait.new(timeout: 30)


  def commonwait(element)
    $wait.until{@driver.find_element(css: element).displayed?}
    self.scroll(@driver.find_element(css: element))
    @driver.execute_script('window.scrollBy(0,-30)')
    sleep 1
  end

  def visible?(element)
    sleep 3
    begin
      @driver.find_element(element).displayed?
    rescue
      false
    end
  end
  
end
