@selenium @trucker
Feature: American Truck Fest

	As a Gannett employee with access to the correct urls
	I want to be able to test for these scenarios
	So that the new contact form works on American Truck Fest


    Scenario: Testing form
    	Given I visit the local version of the American Truck Fest
    	When I enter data in the required form fields
    		And I click the "Submit Form" button
    	Then the page will display "The form was submitted successfully."


	Scenario: Correct Omniture code
		Given I am on the American Truck Fest Omniture page at "http://pages.azcentral.com/ldsn-american-trucker/js/bloodhound.js"
		Then I should see the correct Ominture account code for trucker feature
