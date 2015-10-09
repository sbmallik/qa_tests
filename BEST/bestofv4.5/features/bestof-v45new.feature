Feature: Azcentral's Best 2014 New Features v4.5 Tests

	In order to make the new features live on the 2014 Azcentral's Best
	As a Gannett employee with access to the correct urls
	I want to be able to test for these scenarios

    Scenario: Map / Zoom buttons test

        Given I am on this page: "http://devbestof.pnj.com/winners/2015/14745222/best-wedding-reception-venue-5eleven-palafox-event-hosting" where this is both a map and video

        When I click on the "Map" button on the main image

        Then I should see the div that holds the 'Zoom in' and 'Zoom out' buttons on the right side of the map at these coordinates: 'position: absolute', 'right: 20px', 'top: 0px', and have 'margin: 5px' - therefore they are NOT at the same location as the media buttons

        Then I should see in the chinchilla css file that div that holds the media buttons on the left side of the map are at these coordinates, 'position: absolute', top: 0', and 'left: 0, - therefore they are NOT at the same location as the map zoom in & out buttons

	Scenario: PNJ has a single internal content type test

		Given I am on "http://devbestof.pnj.com/winners/2015/"
		When I click on the "Readers' Choice" link
		Then I should be on "http://devbestof.pnj.com/winners/2015/results?types=Readers%27%20Choice" and I should NOT see the 'Readers' Choice' button on the left-side of the page


	Scenario: Azcentral has two internal content types test

		Given I am now on "http://devbestof.azcentral.com/winners/2014/"
		When I then click on the "Critics' Picks" link
		Then I should be on "http://devbestof.azcentral.com/winners/2014/results?types=critics%27%20picks" and I SHOULD see 'Readers' Choice' and 'Critics' Picks' links on the left-side of the page