Feature: Edit OPPORTUNITY DETAILS

#   Scenario: Edit an Opportunity

#     Given  User open browser.
#     When  User launch zomentum URL and login.
#     And  User navigate to Opportunities page and click an opportunity.
#     And  User click edit button for opportunity details.
#     And  User fill all mandetory details and click save.
#     Then  User verify opportunity edited successfully.

  Scenario: Validating fields in edit Opportunity

    Given  User open browser.
    When  User launch zomentum URL and login.
    And  User navigate to Opportunities page and click an opportunity.
    And  User click edit button for opportunity details.
    And  User remove mandetory details and try to click save.
    Then  User click on save and it should not save.
