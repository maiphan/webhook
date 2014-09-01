Feature: User blank state
  As a new user
  I want to see some sort of introduction
  So I can understand how Coleslaw app is used

  Scenario: View Coleslaw dashboard introduction page
    Given I registered a new account
    Then I should be on the dashboard page
    And I should see introduction texts
