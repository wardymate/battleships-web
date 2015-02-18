Feature: Create the Board
	In order to play battleships
	As a player
	I want to have a board

	Scenario: Having a Board
		Given I am on the board page
		And I enter a board size into the form
		When I click "submit"
		Then I should see the board