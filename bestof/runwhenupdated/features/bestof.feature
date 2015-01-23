Feature: Viewer visits the BESTOF home page
	In order for a user to navigate to the BESTOF 2014 Home-page
	I want to see certain items on the BESTOF home page

	Scenario: View BESTOF home page

		Given I am on the BESTOF home page at "http://nocache.azcentral.com/bestof2014/home"

		Then I should get a page response with a good status

		Then I should see the main hero module within the div id "#region1"
			And I should see that the main hero "#region1" module contains the text "Featured"

		Then I should see the second module that has the div id "#region2"
			And I should see that the second "#region2" module contains the text "Popular"

		Then I should see the third module that has the div id "#region3"
			And I should see that the third "#region3" module contains the text "Most Shared"

		Then I should see the fourth module that has the div id "#region4"
			And I should see that the fourth "#region4" module contains the div id "advertBlock1"

		Then I should see the fifth module that has the div id "#region5"
			And I should see that the fifth "#region5" module contains the text "Near Me"