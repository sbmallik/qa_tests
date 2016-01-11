Given(/^I have accessed the King’s Comics 'Nine to Five' comic via azcentral$/) do
  visit "http://devcomics.azcentral.com/"
  find_link('9 to 5').click
end

When(/^I click on the “Favorites” button$/) do
	find_link('Favorites').click
	#visit "devcomics.azcentral.com/slideshow?&feature_date=2015-06-12"
end

Then(/^I should see the text "(.*?)", and should not see a server error$/) do |text|
	page.should have_selector 'p', :text => text, :count => 1
end


=begin
Then(/^the URL should have a comic ID or a feature ID$/) do
  pending # express the regexp above with the code you wish you had
end


		And the URL should have a comic ID or a feature ID


Given(/^I am also on the live Comics home page at "(.*?)"$/) do |url|
  visit url
end

Then(/^I should see one main comic and ten other Comics displayed$/) do
	page.assert_selector('img.comic-display', :count => 1)
	page.assert_selector('img.uclick-display', :count => 10)
end

Then(/^I should see one 728x90 Ad on the page$/) do
	page.has_selector?(:xpath, './/div[@id="google_ads_iframe_/7103/az-phoenix-C1531/728x90_1/classifieds_0__container__"]')
end

Then(/^I should see one 300x250 Ad on the page$/) do
	page.has_selector?(:xpath, './/div[@id="google_ads_iframe_/7103/az-phoenix-C1531/300x250_2/classifieds_0__container__"]')
end

Then(/^the page should contain the correct link to the Ominture file$/) do
	page.has_selector?(:xpath, '//script[src="/static/js/phx-omniture-1.js"]')
end


	http://comics.azcentral.com/slideshow?comic=9_to_5&feature_id=9_to_5

	http://comics.azcentral.com/slideshow?&feature_date=2015-06-11&feature_id=9_to_5
=end