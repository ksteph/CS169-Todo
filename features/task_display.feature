Feature: View complete and incomplete tasks.

  As a user
  So that I can track my tasks
  I want to see both completed and incomplete tasks

Background:
  Given the following tasks:
    | description              | completed |
    | Write section materials. | true      |
    | Cure cancer.             | false     |

Scenario: Display completed tasks with a check.
  Given I am on the home page
  Then I should see a checkmark next to "Write section materials."

Scenario: Display incomplete tasks with no check.
  Given I am on the home page
  Then I should see a checkbox next to "Cure cancer."
