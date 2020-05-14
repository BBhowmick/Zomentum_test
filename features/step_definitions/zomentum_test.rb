wait = Selenium::WebDriver::Wait.new(timeout: 30)

Given("User open browser.") do
  @browser = Browser.new
  @browser.open_chrome_browser()
end 

When("User launch zomentum URL and login.") do
  @browser.launch_url(APP_URL)
  wait.until { $driver.find_element(css: '.signin-button') }.click  
end    

And("User navigate to Opportunities page and click an opportunity.") do
  wait.until { $driver.find_element(css: '.header-title._header-title') } 
  $driver.find_element(css: 'input[id="username"]').send_keys('nagesh+bansal@channelforce.com')
  $driver.find_element(css: 'input[id="password"]').send_keys('Test@1234')
  $driver.find_element(css: 'button[name="action"]').click
end

And("User click edit button for opportunity details.") do
  wait.until { $driver.find_element(css: '.opportunity-card--header') }.click
  #clicking edit button
  wait.until { $driver.find_element(css: '.opportunity-details-card .ant-btn') }.click
  
end

And("User fill all mandetory details and click save.") do
  #title
  wait.until { $driver.find_element(css: '.drawer-title') }
  title= $driver.find_element(css: 'input[placeholder="Please enter opportunity name"]')
  title.clear
  title.send_keys('Opportunity from API Updated')
  p 'title added'
  #client
  $driver.find_element(css: "div[id='edit_opportunity_form_client_company_id']").click
  $driver.find_element(xpath: "//li[contains(text(),'Kaseya Account Edited')]").click
  p 'client added'
  #Opportunity Type 
  $driver.find_element(css: "div[id='edit_opportunity_form_opportunity_type']").click
  $driver.find_element(xpath: "//li[contains(text(),'Application Development')]").click
  p 'Opportunity Type added'
  #Stage 
  $driver.find_element(css: "div[id='edit_opportunity_form_opportunity_pipeline_stage_id']").click
  $driver.find_element(xpath: "//li[contains(text(),'Prospect')]").click
  p 'Stage added'
  #Owner 
  $driver.find_element(css: "div[id='edit_opportunity_form_owner_user_id']").click
  $driver.find_element(xpath: "//li[contains(text(),'kaseya bot')]").click
  p 'Owner added'
  #Primary Contact  
  $driver.find_element(css: "div[id='edit_opportunity_form_primary_client_user_id']").click
  $driver.find_element(xpath: "//li[contains(text(),'Kaseya Contact Updated <crmevaluationmail+kaseya@gmail.com>')]").click
  p 'Primary Contact added'
  #Expected close date
  $driver.find_element(css: "span[id='edit_opportunity_form_estimated_close_date']").click
  $driver.find_element(xpath: "//a[contains(text(),'Today')]").click
  p 'Expected close date added'
  #save the value  
  $driver.find_element(css: 'button[type="submit"]').click
  p 'data saveed' 
end

Then("User verify opportunity edited successfully.") do
  sleep 1
  status = $driver.find_element(css: '.ant-message-notice-content').displayed?
  expect(status).to eq(true)
end

When("User remove mandetory details and try to click save.") do
  wait.until { $driver.find_element(css: '.drawer-title') }
  title= $driver.find_element(css: "input[placeholder='Please enter opportunity name']")
  title.clear 
  title.send_keys(" ")
  sleep 1
  title_warning = wait.until { $driver.find_element(xpath: "//div[contains(text(),'Please enter opportunity name')]") }.displayed?
  expect(title_warning).to eq(true) 
end

Then("User click on save and it should not save.") do
  $driver.find_element(css: 'button[type="submit"]').click
  begin
    status = $driver.find_element(css: '.ant-message-notice-content').displayed?
    rescue
    p "save will not work, fill the mandetory fields"
  end
end
