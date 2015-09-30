Feature: Check Design
	In order to maintain branding across all secondstreet sites
	As the product manager
	I want a consistent design layout

	Scenario: Check cobrand header
		Given that I am a visitor to the Rochester Choice Awards site
		When I visit http://democratandchronicle.secondstreetapp.com/l/Rochester-Democrat-and-Chronicles-Voters-Choice
		Then I should see a cobrand header
		And I should see Nominate Now! in the header
		And I should see valid h2 text
		And I should see valid header paragraph text