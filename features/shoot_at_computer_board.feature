Feature: Shooting at a Computer Board
  In order to play battleships
  As a nostalgic player
  I want to shoot at the computer's board

  Scenario: Shooting at an empty cell
  	Given I am on the board page
    And I enter a grid coordinate "A1"
    When I click "submit"
    Then the cell "A1" should contain a "splash"
