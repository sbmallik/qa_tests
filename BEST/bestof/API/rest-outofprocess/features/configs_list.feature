Feature: Config File
  In order to check the Bestof config file
  I need some info

  Scenario: File List
    Given the system knows about the following configs:
      | module       | order |
      | advertBlock1 | 4     |
      | featured     | 1     |
      | nearby       | 6     |
      | popular      | 2     |
      | shared       | 3     |
    When the client requests GET /configs
    Then the response should be JSON:
      """
      [
        {"module": "advertBlock1", "order": "4"},
        {"module": "featured", "order": "1"},
        {"module": "nearby", "order": "6"},
        {"module": "popular", "order": "2"},
        {"module": "shared", "order": "3"}
      ]
      """