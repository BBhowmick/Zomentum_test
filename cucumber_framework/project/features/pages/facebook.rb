  class Facebook

    def wait_for_element_to_display(element)
      Selenium::WebDriver::Wait.new(timeout: 30).until{$driver.find_element(css: element).displayed?}
    end

    def is_sign_up_button_displayed
      wait_for_element_to_display('#u_0_15')
      $driver.find_element(css: '#u_0_15').displayed?
    end

    def enter_email
      wait_for_element_to_display('#email')
      $driver.find_element(css: '#email').send_keys(FB_USERNAME)
    end

    def enter_password
      wait_for_element_to_display('#loginbutton')
      $driver.find_element(css: '#pass').send_keys(FB_PASSWORD)
    end

    def click_login_button
      wait_for_element_to_display('#loginbutton')
      $driver.find_element(css: '#loginbutton').click
    end

    def read_left_menu
      wait_for_element_to_display('#left_nav_section_nodes')
      $driver.find_element(css: '#left_nav_section_nodes').text
    end

  end