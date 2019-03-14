Feature: Checking website can be used end to end
  # Scenario: I want to check the show page works
  #   Given I am on the homepage
  #   When I click on a sandwich Ham
  #   Then I should see the sandwiches's show page

  Scenario: I want to confirm five sandwiches are on the homepage
  Given I am on the homepage
  Then I should have 5 sandwiches on the page

  Scenario Outline: I want to check the show page works
    Given I am on the homepage
    When I click on a sandwich <sandwich>
    Then I should see the sandwiches's show page <id>

    Examples:
    | sandwich  |    id    |
    | Ham       |     1    |
    | Jam       |     2    |
    | Spam      |     3    |
    | Clam      |     4    |
    | Lamb      |     5    |
