Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    And I enter a name into the form
    And I enter a board size into the form
    When I click "submit"
    Then I should be taken to a new page "Welcome to the board"


  Scenario: No name entered
  	Given I am on the homepage
  	And I do not enter a name into the form
  	When I click "submit"
  	Then I should stay on the homepage "Welcome to Battleships"

  Scenario: No board size entered
    Given I am on the homepage
    And I do not enter a board size into the form
    When I click "submit"
    Then I should stay on the homepage "Welcome to Battleships"
