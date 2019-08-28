  class Facebook

    def wait_for_element_to_display(element)
      Selenium::WebDriver::Wait.new(timeout: 30).until{$driver.find_element(css: element).displayed?}
    end

    def enter_email
      wait_for_element_to_display('#email')
      $driver.find_element(css: '#email').send_keys("")
    end

    def enter_password
      wait_for_element_to_display('#loginbutton')
      $driver.find_element(css: '#pass').send_keys("")
    end

    def click_login_button
      wait_for_element_to_display('#loginbutton')
      $driver.find_element(css: '#loginbutton').click
    end

  end