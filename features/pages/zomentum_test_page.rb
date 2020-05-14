class ZomentumTestPage

  def initialize(driver)
    @driver = driver
    @file_utility = FileUtility.new(driver)
  end
  def click_on_sign_in_button
      $driver.find_element(css: '.signin-button').click

    
  end


end
