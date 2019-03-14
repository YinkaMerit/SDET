Feature: cucumber expressions

  Scenario: I am able to use integers
  Given I provide an integers 22
  Then I will be able to test the integer

  # Scenario: I continue to use integer expressions
  # Given I provide an integers 69
  # Then I will be able to test the integer

  # Scenario: I like floats
  # Given I provide a float 69.420
  # Then I can test the float

  # Scenario: I am able to capture and use words
  # Given I provide a specific word "pumpernickle"
  # Then I will be able to use the word

  # Scenario: I am able to use integers
  # Given I have 3 monies
  # Given I have 32 peanuts
  # Given I have 1 peanut
  # Then I can buy pizza

  Scenario: I am able to capture words and numbers using regular expressions
  #Now whatever we replace dog with will appear in ther terminal due to (.*)
  Given I provide a specific something like dog I can capture it using a regex
  Given I provide an email address rwhitehouse@spartaglobal.com
  Then I will be unstoppable
