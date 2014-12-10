Feature: New Comics Feature testing
	In order to test the new Comics features
	As a Gannett employee with correct access to the new Comics home page
	I want to be able to see the three requirements below

		Scenario: View three new key features on the Comics home page
			Given I am on the new Comics home page at "http://comics2.azcentral.com/"
			Then I should see one main comic and ten other Comics displayed
			Then I should see one 728x90 Ad on the page
			Then I should see one 300x250 Ad on the page
			Then the page should contain the correct link to the Ominture file