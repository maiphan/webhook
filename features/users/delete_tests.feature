@javascript
Feature: Delete tests
  As a user
  I want to delete tests in my project
  So I can clean up unused tests

  Background:
    Given I have a project
    And the project has test result

  Scenario: Remove test result successfully
    When I view the project
    And I delete a test result
    Then the test result is deleted