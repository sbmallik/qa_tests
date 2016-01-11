@selenium @comics @comic-newkings
Feature: Non-Kings Comics accuracy testing
    In order to test the Comics ERROR that users have experienced
    As a Gannett employee with correct access
    I want to be able to see the correct title on each comic page without errors

        Scenario Outline: Opening each comic and checking the title
            Given I open the Comics homepage at "http://devcomics.azcentral.com/"
            When I navigate to each "<comic>"
            Then I should see the "<title>"

            Examples:
                |                   comic |                   title |
                |                   Agnes |                   Agnes |
                |                    B.C. |                    B.C. |
                |                Big Nate |                Big Nate |
                |            Bloom County |            Bloom County |
                |                   Cathy |                   Cathy |
                |                 Dilbert |                 Dilbert |
                |              Doonesbury |              Doonesbury |
                |                 F Minus |                 F Minus |
                | For Better or For Worse | For Better or For Worse |
                |                 FoxTrot |                 FoxTrot |
                |                Garfield |                Garfield |
                |              Heathcliff |              Heathcliff |
                |        In the Bleachers |        In the Bleachers |
                |            Jen Sorensen |            Jen Sorensen |
                |         Liberty Meadows |         Liberty Meadows |
                |                   Luann |                   Luann |
                |               Matt Bors |               Matt Bors |
                |            Non Sequitur |            Non Sequitur |
                |            Off the Mark |            Off the Mark |
                |           One Big Happy |           One Big Happy |
                |     Pearls Before Swine |     Pearls Before Swine |
                |                Red Meat |                Red Meat |
                |            Rose is Rose |            Rose is Rose |
