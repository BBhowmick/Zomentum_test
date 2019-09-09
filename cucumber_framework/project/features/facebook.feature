Feature: FB Login

Scenario: Go to facebook login page
 Given  I open browser
  When  I launch facebook URL
  Then  I should see sign-up page


Scenario: Login to facebook

 Given  I open browser
  When  I launch facebook URL
   And  I enter email
   And  I enter password
   And  I click on login button
  Then  I should be on home page