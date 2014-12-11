Feature: Viewer visits the BESTOF Palm Springs home page
	In order for a user to navigate to the BESTOF Palm Springs Home-page
	I want to see certain items on the BESTOF Palm Springs home page

	Scenario: View BESTOF home page
		Given I am viewing the home page of Bestof Palm Springs at "http://bestof.desertsun.com/2015/home"

		Then there should be two links with the class 'a.button'

		Then I will locate the container ID that holds search form with 'Address, City or  City, State' and enter 'Palm Springs, CA'

		Then I will click on the locate button to watch the map refocus to Palm Springs, CA
