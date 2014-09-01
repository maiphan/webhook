@javascript
Feature: Upload tests result via CLI
  As an uploader collaborator
  I want to upload tests result to a project via CLI
  So it's available for other collaborators to see

Scenario: Generate and remove api token
  Given I am an uploader of a project
  When I request api token for the project
  Then a new api token is generated
  When I remove the api token
  Then the api token is removed

Scenario: Upload test result with valid api token
  Given I am an uploader of a project
  And I have a valid api token
  When I upload the tests
  Then the test result is created in the project

Scenario: Upload test result with invalid api token
  Given I am an uploader of a project
  And I have a revoked api token
  When I upload the tests
  Then I am told that the token is invalid or removed
