@selenium @top5newsletter @ignore
Feature: Top 5 Newsletter tests
    In order to access the Top 5 Newsletter
    As a public user of the Internet and not authenticated
    I want to open the Top 5 Newsletter and see certain features


	Scenario: Top 5 Newsletter page features

		Given that I am on the Top 5 Newsletter
		Then I will see a personalized greeting based on subscriber name
		And I will see a dynamic subject line that pulls in the top headline; i.e. "Your Daily Top 5"
		And I will see today's date
		And the first story will have a headline, large image and abstract and ‘Read More’ call to action
		And there will be headlines and images for articles two thru five.
		And there will be One 300 x 250 ATF ad unit
		And there will be the Insider link or mention in right rail


	Scenario Outline: Top 5 Newsletter Sharing features

		Given I am on the Top 5 Newsletter
		When I view the standard sharing capabilities underneath header on the left
		Then I will see these links:
			Examples:
                |  link |       text |
                | link1 |   Facebook |
                | link2 |    Twitter |
                | link3 |  Instagram |
                | link4 | GooglePlus |

	Scenario Outline: Top 5 Newsletter Footer features

		Given I am on the Top 5 Newsletter
		When I view the footer navigation
		Then I will see these links:
			Examples:
                |  link |                       text |
                | link1 |                Unsubscribe |
                | link2 |             Privacy Policy |
                | link3 |       Manage subscriptions |
                | link4 | Change account preferences |
                | link5 |           Terms of Service |
                | link6 |                 Ad Choices |
