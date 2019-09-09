Given ('I open browser') do
  @browser = Browser.new
  @browser.open_chrome_browser()
end

When ('I launch facebook URL') do
  @browser.launch_url(FB_URL)
end

And ('I enter email') do
  @facebook = Facebook.new
  @facebook.enter_email()
end

And ('I enter password') do
  @facebook.enter_password()
end

And ('I click on login button') do
  @facebook.click_login_button()
end

Then ('I should be on home page') do
  expect(@facebook.read_left_menu).to include("News Feed")
end
