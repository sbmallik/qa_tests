Feature: BESTOF Miyagi testing
	In order to enter a new BESTOF article
	As a Gannett employee with correct access to the Miyagi form
	I want to be able to login and create a new article

		@javascript
		Scenario: Fill out ONLY required fields in Miyagi new article form
			Given I am on the main Miyagi page at "http://miyagi.azcentral.com/kumiko/", and I login
			When I navigate to the "Create New Article" page
      		Then I select the 2015 option from the Year dropdown
      		Then I select the Critics option from the Type dropdown
      		Then I select the FOOD & DRINK option from the Subcateory dropdown
      		Then I fill in Award with "testing miyagi"
      		Then I fill in Winner with "testing miyagi"
			Then I fill in the Text Area with "testing miyagi"
			Then I click on "Save"
			Then I should see "Error in the Body field - Enter a body" in red at the top of the page