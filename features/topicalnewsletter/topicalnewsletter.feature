@selenium @topicalnewsletter @ignore
Feature: Topical Newsletter tests
	In order to test the Topical Newsletter features
	As a subscriber for the pilot site
	I should see these scenarios on the updated visual layout

	Scenario Outline: Footer links

	       Given I am on the link for the Topical Newsletter I should see these links in the footer

                Examples:
                |            link |                       text |
                | http://blah.com |             Privacy Policy |
                | http://blah.com |                 Ad Choices |
                | http://blah.com |           Terms of Service |
                | http://blah.com | Change account preferences |
                | http://blah.com |       Manage Subscriptions |


	Scenario Outline: Sharing links

		Given I am on the link for the Topical Newsletter I should see these links for Sharing

                Examples:
                |            link |        text |
                | http://blah.com |    Facebook |
                | http://blah.com |     Twitter |
                | http://blah.com | Google Plus |
                | http://blah.com |    LinkedIn |


	Scenario: Presto Content

		Given that I am a subscriber to the Topical Newsletter for a pilot site
		When I go to [pilot site "url]/newsletter/topical-b/""
		Then I should see the 5 most recent stories published to the relevant Presto front
