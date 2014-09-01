@javascript
Feature: Upload tests
  As an uploader collaborator
  I want to upload test files to a project
  So I can share it with others

  Background:
    Given I am an uploader of a project
    And I add test result to the project

  Scenario: Collaborator uploads test feature file successfuly
    When I add test feature file to the test result
    Then the test result contains 1 feature
    And I see message "Test file was succesfully added."

  Scenario: Collaborator uploads the same test feature file unsuccessfuly
    Given I add test feature file to the test result
    When I add test feature file to the test result
    Then I see message "Feature file for this test has already been added."

  Scenario: Collaborator uploads test outcome file successfuly
    Given I add test feature file to the test result
    When I add test outcome file to the test result
    Then the test result contains 1 feature
    And I see message "Test file was succesfully added."
    And the feature result is updated

  Scenario: Collaborator uploads test outcome file unsuccessfuly without feature file
    When I add test outcome file to the test result
    Then I see message "Feature file for this test cannot be found."

  Scenario: Collaborator uploads the same test outcome file unsuccessfuly
    Given I add test feature file to the test result
    And I add test outcome file to the test result
    When I add test outcome file to the test result
    Then I see message "Result file for this test has already been added."
