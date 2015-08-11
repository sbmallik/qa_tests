Feature: Best of Palm Springs Nav testing
	In order to test the new Best of Palm Springs Navigation links
	As a Gannett employee with correct access to the new Best of Palm Springs home page
	I want to be able to see the three requirements below

		Scenario: View BESTOF Navigation
			Given I am viewing the navigation of the Bestof Palm Springs home page at "http://bestof.desertsun.com/"
				And I should see the css for the Facebook icon in the first list item
				And I should see the css for the Twitter icon in the second list item
				And I should see the text How it works in the last list item