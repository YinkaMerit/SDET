Feature: I am able to add a budget
  As a money conscious user
  I want to create a budget
  So that I can track my spending
  
  Scenario: I am able to open the budget page
    Given I can access the app
    When I click budget
    Then the budget page opens

  Scenario: I am able to add a budget
    Given I can access the app
    And I click budget
    When I enter a budget
    Then the budget is saved and displayed

  Scenario: I am able to delete a budget
    Given I can access the app
    And I click budget
    And a budget is displayed
    When I delete a budget
    Then it will be removed from the list
