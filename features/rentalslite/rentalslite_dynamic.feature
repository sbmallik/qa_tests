@selenium @uscp @rentalslite @ignore

Feature: Rentals Lite application

	As a Gannett employee with access to the correct urls
	I want to be able to test for these scenarios
	So that the new form works on the new Rentals Lite page

    Scenario: Complete form search

    	Given I visit the Rentals Lite web page
    	When I complete the Rental Lite search form
    		And I click the 'Search' button
    	Then I should be taken to the correct Apartments.com search results page
