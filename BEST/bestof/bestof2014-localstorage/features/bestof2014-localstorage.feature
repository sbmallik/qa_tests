Feature: Verifying that data is stored correctly on BESTOF2014
	In order to view articles on the BESTOF2014 Home page
	As a developer
	I want to clear localStorage and make sure it repopulates after refreshing

	Scenario: View BESTOF home page
		Given I am on the BESTOF home page at "http://devwww.azcentral.com/bestof2014/home"
		Then I should clear the localStorage
		Then I will verifiy that localStorage is empty
		Then the page should reload
		Then I will verify that the localStorage is NOT empty anymore