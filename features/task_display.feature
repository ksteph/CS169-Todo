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

Scenario: Display incomplete tasks with no check.
