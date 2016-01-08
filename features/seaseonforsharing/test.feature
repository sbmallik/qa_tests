@selenium @seaseonforsharing
Feature: Viewer visits the MOBILE Season for Sharing page
	In order to read the MOBILE Season For Sharing page
	I want to see these items

	Scenario: View SFS home page
		Given I am on the MOBILE SFS page at 'http://pages.azcentral.com/season-for-sharing/donate.html?mobile'

		Then I should see the text "$5.00"
		And I should also see the text "$10.00"
