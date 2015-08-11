Feature: Feel Good 5 application tests
    In order to access the Feel Good 5 web application
    As a public user of the Internet and not authenticated
    I want to open the Feel Good 5 application and see certain features


	Scenario: Feel Good 5 web page features present
		Given I am on the Feel Good Five page at "http://pick5.azcentral.com/sports-are-awesome/"
		Then there should be 36 articles displayed in a list on the right
		And there should be a title on the first article page
		And there should be an azcentral co-brand header
		And there should be an azcentral co-brand footer
		And there should be a 300x250 ad in the right rail
		And there should be a count of articles


    Scenario: Feel Good 5 web page interaction
        Given I am on the Feel Good Five page again at "http://pick5.azcentral.com/sports-are-awesome/"
        When I want to test the up and down arrows on the article list
        Then I select the sixth article in the list
        Then the page title changes to "The Mac Attack: PAT rule could change point spreads"
        And the article that I selected should be highlighted in the list of articles
        And the credits for the article should be visible


    Scenario: Feel Good 5 social media features
        Given I am on the current Feel Good Five page again at "http://pick5.azcentral.com/sports-are-awesome/27650001/top-high-school-football-prospects-in-arizona-2018-class" and I want to share this page via the sharing tools in the uppper right-hand corner
        Then the url should contain the correct article title for sharing via Facebook
        And the url should contain the correct URL for sharing via Twitter
        And the url should contain the correct URL for sharing via E-mail
