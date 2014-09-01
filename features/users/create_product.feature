@javascript
Feature: Create project
  As a user
  I want to create project
  So I can track my features

  Background:
    Given I am logged in
    When I create new project

  Scenario: Create project successfully
    When I submit proper project details
    Then the project is created
    And I can view the project

  Scenario: Create project unsuccessfully
    When I submit improper project details
    Then I am requested to correct project details
