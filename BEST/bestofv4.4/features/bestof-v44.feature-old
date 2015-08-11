Feature: Azcentral's Best 2014 Regression v4.3 Tests

	In order to make the new features live on the 2014 Azcentral's Best
	As a Gannett employee with access to the correct urls
	I want to be able to test for these scenarios

	Scenario: Search Term
		Given I am on the 'Critics Picks' Azcentral's Best page at: "http://devbestof.azcentral.com/winners/2014/results?types=Critics%27%20Picks"
		When I enter the term 'kids' in the search box
		Then I see a resulting 7 pertinent articles
		Then I am on this URL: "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks&keywords=kids"

	Scenario: Filtering Content
		Given I am on the resulting URL of the last 'Search Term' test at: "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks&keywords=kids	"
		When I click on the word 'Categories' then click on 'Arts & Entertainment'
		Then I see a resulting 3 pertinent articles
		Then I am on this new URL: "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks&categories=arts%20%26%20entertainment&keywords=kids"

	Scenario: Sorting Content
		Given I am now on the resulting URL of the last 'Filtering Content' test at: "http://best-azcentral.azcentral.com/winners/2014/results?&types=Critics%27%20Picks&categories=arts%20%26%20entertainment&keywords=kids#"
		When I click on the word 'Sort' then I click on 'Category'
      	Then the URL will change to this: "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks&categories=arts%20%26%20entertainment&keywords=kids&sortby=category"

    Scenario: Checking article photo/map/video icons
    	Given I am on an article page
    	When I open the page I make sure the first main image is a photo
    	Then I click on the 'Video' icon and see the photo change to a Video, and the photo and map are hidden
    	And then I click on the 'Map' icon and see the video change to a map, and the photo and video are hidden

    Scenario: Checking social media features
        Given I am on the current article page again at "http://devbestof.azcentral.com/winners/2014/14744893/best-kids-activity-childrens-museum-of-phoenix" and I want to share this page via the sharing tools
        Then the data-text should contain the correct article title for sharing via Facebook
        And the href should contain the correct URL for sharing via Twitter
        And the href should contain the correct URL for sharing via GooglePlus
        And the href should contain the correct mailto for sharing via E-mail
