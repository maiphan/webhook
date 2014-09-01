@javascript
Feature: Invite collaborators
  As a user
  I want to invite collaborators
  So they can collaborate with me on the project

Scenario: Invite collaborator
  Given there is 2 users in the system
  When I am logged in
  And I manage collaborators of my project
  And I search for collaborators
  Then I see all users on the system
  When I add all users to my project
  Then all users are now my project collaborators
