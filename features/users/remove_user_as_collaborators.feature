@javascript
Feature: Remove user as collaborators
  As a project owner/manager
  I want to remove user from collaborators list
  So I can control my collaborators list

  Scenario: project owner remove user from collaborator list
    Given I have a project
    And a user is added as collaborator to the project
    When I manage collaborators of the project
    And I remove all collaborators
    Then the project has no collaborators

  Scenario: Project manager remove other from collaborator list
    Given I am a manager of a project
    When I manage collaborators of the project
    And I remove all collaborators
    Then the project has no collaborators
