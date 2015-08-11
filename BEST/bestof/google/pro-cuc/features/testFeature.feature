Feature: Running Cucumber with Protractor
  As a user of Protractor
  I should be able to use Cucumber
  to run my E2E tests

  Scenario: Checking Elements on Bestof Desert Sun home page
    Given I go to the Bestof Desert Sun homepage
    Then the title should equal "desertsun.com's Best Of 2015"
    And the menu should contain "HOW IT WORKS"
