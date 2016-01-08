@selenium @games @ignore
Feature: Games Module on Indystar

	In order to make the new Games module live on the Indystar site
	As a Gannett employee with access to the correct urls
	I want to be able to test for these scenarios

	Scenario: #1 - Verify 2 games in module

		Given that I'm on this url "http://www.indystar.com"
		When I want to make sure that the module will feature 2 games that are randomly refreshed
		Then I verify that there are two headlines, images and Play Now buttons
		And I verify that one links to "http://games.indystar.com/games/spider-solitaire/"
		And I verify that one links to "http://games.indystar.com/games/spider-solitaire/"


	Scenario: #2 - Verify More links

		Given that I'm on this url "http://www.indystar.com"
		When I want to make sure that the module will feature 2 games that are randomly refreshed
		Then I verify that there is a "More" section
		And I verify that there are four customizable More Links for additional promotion


