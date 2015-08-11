Feature: Azcentral's Best 2014 Regression v4.0 Tests

	In order to make the new features live on the 2014 Azcentral's Best
	As a Gannett employee with access to the correct urls
	I want to be able to test for these scenarios

	Scenario: Search Term
		Given I am on the 'Critics Picks' Azcentral's Best page at: "http://best-azcentral.azcentral.com/winners/2014/results?types=Critics%27%20Picks"
		When I enter the term 'kids' in the search box
		Then I see a resulting 7 pertinent articles
		Then I am on this URL: "http://best-azcentral.azcentral.com/winners/2014/results?&types=Critics%27%20Picks&keywords=kids"

	Scenario: Filtering Content
		Given I am on the resulting URL of the last 'Search Term' test at: "http://best-azcentral.azcentral.com/winners/2014/results?&types=Critics%27%20Picks&keywords=kids"
		When I click on the word 'Categories' then click on 'Arts & Entertainment'
		Then I see a resulting 3 pertinent articles
		Then I am on this new URL: "http://best-azcentral.azcentral.com/winners/2014/results?&types=Critics%27%20Picks&categories=arts%20%26%20entertainment&keywords=kids#"

	Scenario: Sorting Content
		Given I am now on the resulting URL of the last 'Filtering Content' test at: "http://best-azcentral.azcentral.com/winners/2014/results?&types=Critics%27%20Picks&categories=arts%20%26%20entertainment&keywords=kids#"
		When I click on the word 'Sort' then I click on 'Category'
      	Then the URL will change to this: "http://best-azcentral.azcentral.com/winners/2014/results?&types=Critics%27%20Picks&categories=arts%20%26%20entertainment&keywords=kids&sortby=category"

	Scenario: More Winners Near Me
		Given I am on an article page
		When I want to make sure there are articles in the "More Winners Near Me" section
		Then I will see a resulting 6 pertinent articles

