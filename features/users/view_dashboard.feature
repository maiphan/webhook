@javascript
Feature: View dashboard
  As a project creator/collaborator
  I want to view the dashboard
  So I can view all test results

  Scenario: View all test results
    Given the project has test result
    And I am a collaborator of the project
    When I am on the dashboard page
    Then I see all test results
    When I click on a test result
    Then I see all features of the test result
    And I see passed test cases marked green
    And I see failed test cases marked red
    And I see the comment count for each scenario
    When I click on comment count
    Then I should see the comment list and form
    When I click on close comment button
    Then I should not see the comment list and form