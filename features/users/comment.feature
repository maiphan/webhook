@javascript
Feature: Comment on test scenarios
  As a user
  I want to comment on test scenarios

  Background:
    Given the project has test result
    And I am a collaborator of the project
    And I view the test result
    And I click on comment count

  Scenario: Comment on a test scenario successfully
    When I post a comment with valid content
    Then I should see my comment in the comment list

  Scenario: Comment on a test scenario unsuccessfully
    When I post a comment with blank content
    Then I should see "Content can't be blank" message
    And I should not see my comment in the comment list

  Scenario: Delete a comment on a test scenario
    Given I post a comment with valid content
    When I click on delete link on the comment
    Then I should not see my comment in the comment list