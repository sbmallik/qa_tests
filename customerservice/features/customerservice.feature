Feature: Employee Customer Service Site

	As a Gannett employee with access to the correct urls
	I want to be able to test for these scenarios
	So that the new contact form works on the Employee Customer Service Site

    Scenario: Email Customer Service

	    Given I am using the employee customer service site
		When I click "email customer Service"
		Then I should be brought to the existing Employee Customer Service form

    Scenario: Subscribe

		Given I am using the employee customer service site
		When I click "subscribe"
		Then I should be brought to the Subscribe form

    Scenario: Free Trial

		Given I am using the employee customer service site
		When I click "free trial"
		Then I should be brought to the free trial page

    Scenario: Chat

		Given I am using the employee customer service site
		When I click "chat"
		Then I should be brought to the chat support page for the Indy Star

    Scenario: FAQ

		Given I am using the employee customer service site
		When I click "faq"
		Then I should be brought to the IndyStar FAQ page

    Scenario: Omniture

		Given I am on the employee customer service site javascript file
		Then I should see the correct Ominture account code
