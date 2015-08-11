Feature: Mobile Web Newsletter tests
	In order to test the Mobile Web Newsleter features
	As a Gannett employee with correct access
	I want to be able to test these scenarios

	Scenario: Check / Edit Newsletter Choices
		Given I am a user who is logged into Indy Star: "https://account.indystar.com/"
		When I go to this url newsletter page: "http://mhigh-preprod-app.indystar.com/news/?test=true&debug=true&promo=default"
		Then I click on the "View our Newsletters" button
		And I am able to see my chosen newsletters
		And then I close the newsletter window

		Then I click on the "View our Newsletters" button again
		And I check box next to 'Star Sports newsletter'
		And I enter my correct email address again: "ryakon@gmail.com"
		And I click on "Subscribe"
		Then I will see the "You have successfully updated your newsletter subscriptions." confirmation message window
		And then I close the 'Thank you!' confirmation window


	Scenario: Check Mobile Views
		Given I go to this url: "http://mhigh-preprod-app.indystar.com/news/?test=true&debug=true&promo=default" and the browser window is only "400" pixels wide by "420" pixels high
		Then I will see the correct class=overlay height code of "6170px" on the page


	Scenario: Check Desktop Views
		Given I go to this url: "http://mhigh-preprod-app.indystar.com/news/?test=true&debug=true&promo=default" and the browser window is full at "1088" pixels wide by "420" pixels high
		Then I will see the correct class=overlay height code of "5892px" on the page
