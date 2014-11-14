Feature: Viewer visits the BESTOF home page
	In order for a user to navigate to the BESTOF 2014 Home-page
	I want to see certain items on the BESTOF home page

	Scenario: View BESTOF home page
		Given I am on the BESTOF home page at 'http://devwww.azcentral.com/bestof/home'

		Then I should see the text "Critic's Picks"

		Then there should be two links with the class 'a.button'

		Then I will locate the container ID that holds search 'Address, City or  City, State' and enter 'Tempe, AZ'

		Then I will click on the locate button to watch the map move to that area		
