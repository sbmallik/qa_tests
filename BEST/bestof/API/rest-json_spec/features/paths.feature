Feature: Paths
  Background:
    Given the JSON is:
      """
      {
        "ads": {
          "advertBlock1": {
            "order": 4
          }
        }
      }
      """

  Scenario: Base paths
    When I get the JSON
    Then the JSON should have "ads"

  Scenario: Nested paths
    When I get the JSON
    Then the JSON should have "ads/advertBlock1"
    
  Scenario: Deeply nested paths
    When I get the JSON
    Then the JSON should have "ads/advertBlock1/order"

  Scenario: Table format
    When I get the JSON
    Then the JSON should have the following:
      | ads                    |
      | ads/advertBlock1       |
      | ads/advertBlock1/order |