Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    And I enter a name into the form
    When I click "New Game"
    Then I should see "The board"

  Scenario: Inputting name
