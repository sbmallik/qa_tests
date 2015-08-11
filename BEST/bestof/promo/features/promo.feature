Feature: User sees promo on best.azcentral.com
  As the product owner
  I want to see the new promo banner text

  Scenario: Promo Banner Test
		Given I am on the BESTOF home page at "http://nocache.azcentral.com/bestof2014/home" and I see the promo banner

		Then I should find span link with the text 'Nominate your favorites!' and click it

		Then I should be redirected to this URL "http://arizonarepublic.secondstreetapp.com/l/azcentrals-Best-Readers-Choice--Spring-2015"