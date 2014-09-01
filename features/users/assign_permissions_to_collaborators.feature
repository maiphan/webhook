@javascript
Feature: Assign permissions to collaborators
  As a user
  I want to assign permissions to collaborators
  So they can interact with my project

Background:
  Given I am logged in
  And I have a project with 1 collaborator

  Scenario: Assign permissions to collaborators
    When I manage collaborators of my project
    And I assign admin permission to collaborator
    Then collaborator can manage other collaborators on my project
    When I assign upload permission to collaborator
    Then collaborator can upload feature to my project
