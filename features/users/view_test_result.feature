@javascript
Feature: View test result
  As a project creator/collaborator
  I want to view the project test result
  So I can understand how the project is designed

Scenario: View the project test result
  Given the project has test result
  And I am a collaborator of the project
  When I view the test result
  Then I see all features of the test result
  And I see passed test cases marked green
  And I see failed test cases marked red
  And I see the comment count for each scenario
  When I click on comment count
  Then I should see the comment list and form
