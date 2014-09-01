@javascript
Feature: View accumulative report of test results
  As a user
  I want to view a accumulative report of test results
  So I can see the project progress

  Scenario: View test reports
    Given the project has test result
    And I am a collaborator of the project
    When I am on the report page
    Then I see the test run results report
    And I see the feature results report