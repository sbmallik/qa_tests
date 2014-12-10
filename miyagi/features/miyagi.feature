Feature: BESTOF Miyagi testing
	In order to enter a new BESTOF article
	As a Gannett employee with correct access to the Miyagi form
	I want to be able to login and create a new article

		Scenario: Fill out ONLY required fields in Miyagi new article form
			Given I am on the page where I can create an article at "http://miyagi.azcentral.com/kumiko/azcentral/articles/new"
			When I select the Critics option from the Type dropdown
			Then I select the FOOD & DRINK option from the Subcateory dropdown
			Then I fill in Award with "testing miyagi"
			Then I fill in Winner with "testing miyagi"
			Then I fill in the Text Area area with 'testing miyagi'
			Then I click on "Save"
			Then I should see "Article Created" in red at the top of the page