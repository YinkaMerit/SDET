Feature: BBC Login

  Scenario: Inputting correct credentials will login successfully
    Given I access the bbc login page
    When I input a correct username
    And I input a correct password
    And I click login
    Then I will be logged in

  Scenario: Inputting blank credentials will display the correct error
    Given I access the bbc login page
    When I click login
    Then I will see an error for blank details
