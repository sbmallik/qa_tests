Feature: Viewer visits the BESTOF home page
	In order for a user to navigate to the BESTOF 2014 Home-page
	I want to see certain items on the BESTOF home page

	Scenario: View BESTOF home page
		Given I am on the BESTOF home page at 'http://archive.azcentral.com/bestof2014/home'

		Then there should be two links with the class 'a.button'

		Then I will locate the container ID that holds search form with 'Address, City or  City, State' and enter 'Tempe, AZ'

		Then I will click on the locate button to watch the map refocus to that area		
