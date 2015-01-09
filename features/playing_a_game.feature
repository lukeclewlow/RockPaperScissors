Feature: Playing a game
	As a bored individual
	In order to play a game of RPS
	I want to pick an option and see if I win

	Scenario: Entering name (name given)
		Given I am on the homepage
		Then I enter my name
		And click on submit
		Then I will see a welcome greeting

	Scenario: Playing simple game(winning)
		Given I am on the game page
		And I click on the "Rock" button
		Then I will see a "You Win!" message

	Scenario: Playing simple game(losing)
		Given I am on the game page
		And I click on the "Paper" button
		Then I will see a "Loser!" message
