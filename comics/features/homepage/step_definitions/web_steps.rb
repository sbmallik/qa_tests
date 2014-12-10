Given(/^I am on the new Comics home page at "(.*?)"$/) do |url|
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