Feature: Placing a ship
  In order to play battleships
  As a nostalgic player
  I want to place a ship on the board

  Scenario: Selecting ship
    Given I am on the board page
    And I select the ship
    When I click "submit"
    Then I should see the ship on the board