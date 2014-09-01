@javascript
Feature: Receive notifications on project activities
  As a user
  I want to receive notifications about my project activities
  So I am up to date on my projects

  Background:
    Given the project has test result

  Scenario: User receives notification when added as project collaborator
    Given I am added as a collaborator of the project by project creator
    When I am on the dashboard page
    Then I see 1 unread notification
    And notification 1 shows collaborator added
    When I click on notification 1
    Then I am redirected to the project page
    And I see 0 unread notification

  Scenario Outline: User receives notification when added as project uploader/manager
    Given I am added as a collaborator of the project by project creator
    And I am added as a <role> by project creator
    When I am on the dashboard page
    Then I see 2 unread notifications
    And notification 1 shows <role> added
    When I click on notification 1
    Then I am redirected to the project page
    Examples:
      | role       |
      | "uploader" |
      | "manager"  |

  Scenario: Collaborator receives notification when someone comments on a test
    Given I am a collaborator of the project
    And someone comments on a test scenario
    When I am on the dashboard page
    Then I see 1 unread notification
    And notification 1 shows comment added
    When I click on notification 1
    Then I am redirected to the feature page
    And I see 0 unread notification

  Scenario: Collaborator receives notification when someone changes project name
    Given I am a collaborator of the project
    And someone changes project name
    When I am on the dashboard page
    Then I see 1 unread notification
    And notification 1 shows project name changed
    When I click on notification 1
    Then I am redirected to the project page
    And I see 0 unread notification