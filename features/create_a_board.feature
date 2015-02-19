Feature: Create the Board
	In order to play battleships
	As a player
	I want to have a board

	Scenario: Creating a 2x2 Board
		Given I am on the homepage
    And I enter a name into the form
    And I enter a board size of 2 into the form
    When I click "submit"
		Then I should see a board of row size 2