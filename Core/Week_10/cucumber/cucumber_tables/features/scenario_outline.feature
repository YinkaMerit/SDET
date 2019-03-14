Feature: Scenario Outline with data tables

  Scenario Outline: Using an example table to make out tests drier and more dynamic

  Given I have more than one data row in my table
  And includes <name> as a string and <age> as an integer
  Then I can validate <name> and <age> are correct

  Examples:
  | name   | age |
  | Rob    | 28  |
  | Louis  | 22  |
  | Ash    | 24  |
