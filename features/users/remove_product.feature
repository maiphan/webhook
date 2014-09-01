@javascript
Feature: Remove project
  As a project owner
  I want to remove my project
  So I can clean up accidentally created one

  Scenario: Remove project successfully
    Given I have a project
    When I remove that project
    Then the project is removed
