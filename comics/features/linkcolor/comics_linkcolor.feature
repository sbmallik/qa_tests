@selenium @comics @comic-linkcolor
Feature: New Comics Feature CSS file testing
	In order to test the new Comics features
	As a Gannett employee with correct access to the new Comics home page
	I want to be able to see the one requirement below pass

		Scenario: CSS file
			Given I am on the Comics CSS file at "http://comics.azcentral.com/static/css/styles.css"
    		Then I should see the correct CSS link color of 'color: #337ab7' for 'a, a:link, a:visited, a:hover, a:active'
