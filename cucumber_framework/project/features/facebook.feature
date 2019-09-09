Feature: FB Login

Scenario: Login to facebook
 Given  I open browser
  When  I launch facebook URL
   And  I enter email
   And  I enter password
   And  I click on login button
  Then  I should be on home page