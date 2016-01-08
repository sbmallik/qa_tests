@selenium @getquote
Feature: State Farm Insurance Tab
  
  Scenario: Verify Get a Quote
    Given I am on the state farm homepage
    When I click on the Insurance tab in the nav bar
    Then I should see the Get a Quote module
