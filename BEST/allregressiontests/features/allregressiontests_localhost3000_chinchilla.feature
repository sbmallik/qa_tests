@selenium
Feature: AZC's Best CHINCHILLA 2014 ALL Regression Tests

  In order to make the new features live on the 2014 Azcentral's Best
  As a Gannett employee with access to the correct urls
  I want to be able to test for these scenarios

  Scenario: #1) Article ID test
    Given I have found this particular article ID on devbestof.azcentral.com: "http://z.bestof.azcentral.com:3000/winners/2014/14744893/best-kids-activity-childrens-museum-of-phoenixhttp://z.bestof.azcentral.com:3000/winners/2014/14744893/best-kids-activity-childrens-museum-of-phoenix"
    When I put that same article ID into the bestof.pnj.com site: "http://devbestof.pnj.com/winners/2015/14744893"
    Then I should not see the article content, but I should be redirected to the homepage of "http://devbestof.pnj.com/winners/2015"


  Scenario: #2) Search, Filtering and Sorting Content
    Given I am on the Azcentral's Best Critic's Picks page at: "http://z.bestof.azcentral.com:3000/winners/2014/results?types=Critics%27%20Picks"
    When I enter the term 'kids' in the search box
    Then I am on this URL: "http://z.bestof.azcentral.com:3000/winners/2014/results?&types=Critics%27%20Picks&keywords=kids"
    And I click on the word 'Categories' then click on 'Arts & Entertainment'
    Then I am on this new URL: "http://z.bestof.azcentral.com:3000/winners/2014/results?&types=Critics%27%20Picks&categories=arts%20%26%20entertainment&keywords=kids"
    Then I click on the word 'Sort' then I click on 'Category'
    And the URL will change to this: "http://z.bestof.azcentral.com:3000/winners/2014/results?&types=Critics%27%20Picks&categories=arts%20%26%20entertainment&keywords=kids&sortby=category"


  Scenario: #3) More Winners Near Me
    Given I am on an article page
    When I want to make sure there are articles in the "More Winners Nearby" section
    Then I will see a resulting 6 pertinent articles


Scenario: #4) Checking social media features
    Given I am on the current article page again at "http://z.bestof.azcentral.com:3000/winners/2014/14744893/best-kids-activity-childrens-museum-of-phoenix" and I want to share this page via the sharing tools
    Then the data-text should contain the correct article title for sharing via Facebook
    And the href should contain the correct URL for sharing via Twitter
    And the href should contain the correct mailto for sharing via E-mail


Scenario: #5) Map / Zoom buttons test

    Given I am on this page: "http://z.bestof.azcentral.com:3000/winners/2014/14744893/best-kids-activity-childrens-museum-of-phoenix" where this is both a map and video

    When I click on the "Map" button on the main image

    Then I should see the div that holds the 'Zoom in' and 'Zoom out' buttons on the right side of the map at these coordinates: 'position: absolute', 'right: 28px', 'top: 0px', and have 'margin: 5px' - therefore they are NOT at the same location as the media buttons

    And I should see in the badger css file that div that holds the media buttons on the left side of the map are at these coordinates, 'position: absolute', top: 0', and 'left: 0, - therefore they are NOT at the same location as the map zoom in & out buttons


Scenario: #6) PNJ has a single internal content type test

    Given I am on "http://devbestof.pnj.com/winners/2015/"
    When I click on the "Readers' Choice" link
    Then I should be on "http://devbestof.pnj.com/winners/2015/results?types=Readers%27%20Choice" and I should NOT see the 'Readers' Choice' button on the left-side of the page


Scenario: #7) Azcentral has two internal content types test

    Given I am on the Azcentral's Best page at "http://z.bestof.azcentral.com:3000/winners/2014/"
    When I then click on the "Critics' Picks" link
    Then I should be on "http://z.bestof.azcentral.com:3000/winners/2015/results?types=Critics%27%20Picks" and I SHOULD see 'Readers' Choice' and 'Critics' Picks' links on the left-side of the page


Scenario: #8) ALL Login tests

    Given I am on the Azcentral's Best page at "http://z.bestof.azcentral.com:3000/winners/2014/"
    When I click the "LOGIN" button
    Then I should arrive at the login url of: "https://account.azcentral.com/bestOf/ui/login/?onSuccessRedirectURL=http://z.bestof.azcentral.com:3000/winners/2015/"
    And I log into my account
    Then I should be returned to this page "http://z.bestof.azcentral.com:3000/winners/2015/"
    And when I click on "MY ACCOUNT"
    Then I should arrive at the 'My Account' page


Scenario: #9) Login test on PNJ

    Given I am on the PNJ site of "http://devbestof.pnj.com"
    Then there should be no 'login' button


Scenario: #10) Testing Email Feature

    Given I am on the Azcentral's Best page at "http://z.bestof.azcentral.com:3000/winners/2014/"
    When I click on the "Critics' Picks" link
    Then I also click on the "Best kids activity" link
    Then I should see the 'Send an email' image contain the correct 'mailto' information


Scenario: #11) Testing "RED ALERT" Feature

    Given I am on the Azcentral's Best page at "http://z.bestof.azcentral.com:3000/winners/2014/"
    When I click on the "Critics' Picks" link
    Then I also click on the "Best kids activity" link
    Then I click on the 'Next Article' arrow five times
    Then I should see the text "5 free articles left"
