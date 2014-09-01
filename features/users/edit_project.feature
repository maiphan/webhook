@javascript
Feature: Edit project
  As a user
  I want to edit my project information

  Background:
    Given I am logged in
    When I have a project

  Scenario: Edit project successfully
    When I click edit project link
    And I edit the project with proper details
    Then the project is edited

  Scenario: Edit project unsuccessfully
    When I click edit project link
    And I edit the project with improper details
    Then I am requested to correct project details
