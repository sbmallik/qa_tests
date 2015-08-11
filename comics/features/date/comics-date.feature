Feature: Comics DATE testing
	In order to test the Comics DATE feature
	As a Gannett employee with correct access
	I want to be able to see today's DATE on the Comics home page

		Scenario: View the correct DATE on the Comics home page
			Given I am on the live Comics home page at "http://comics.azcentral.com/"
			Then the code: 'span.comic-date-r' with today's date "June 03, 2015" appears ten times on the page