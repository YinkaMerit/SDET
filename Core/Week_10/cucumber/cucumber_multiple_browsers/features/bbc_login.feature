Feature: BBC Login

  Scenario: Inputting incorrect username credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for not finding the account

  Scenario: Inputting a password less than 8 characters shows an error
    Given I access the bbc login page
    And I input any username details
    And I input an incorrect password as 1234abc
    When I try to login
    Then I receive an error stating it needs to be at least 8 chars

  Scenario: Inputting incorrect password credentials shows an error where the password is only letters
    Given I access the bbc login page
    And I input correct username details
    And I input an incorrect password as abcdefgh
    When I try to login
    Then I receive an error for the password only contains letters

  Scenario: Inputting incorrect password credentials shows an error where the password is only numbers
    Given I access the bbc login page
    And I input correct username details
    And I input an incorrect password as 12345678
    When I try to login
    Then I receive an error for the password only contains numbers

  Scenario: Inputting correct username and password
      Given I access the bbc login page
        And I input correct username details
        And I input a correct password
      When I try to login
      Then I am redirected to the homepage
