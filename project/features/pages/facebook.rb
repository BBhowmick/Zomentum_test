class Facebook

  def wait_for_element_to_display(element)
    Selenium::WebDriver::Wait.new(timeout: 30).until{$driver.find_element(css: element).displayed?}
  end

  def is_sign_up_button_displayed
    wait_for_element_to_display('#u_0_15')
    $driver.find_element(css: '#u_0_15').displayed?
  end

end
