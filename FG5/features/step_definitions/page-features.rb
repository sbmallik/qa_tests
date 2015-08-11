Given(/^I am on the Feel Good Five page at "(.*?)"$/) do |url|
  visit url
  sleep 1
end

Then(/^there should be (\d+) articles displayed in a list on the right$/) do |count|
    page.has_selector?('span.ldsn-number', :count => count)
    sleep 1
end

And(/^there should be a title on the first article page$/) do
    page.has_text?('<h1>NBA mock draft - 2015: Paul Coro\'s first edition</h1>')
    sleep 1
end

And(/^there should be an azcentral co-brand header$/) do
	page.has_selector?(:xpath, './/iframe[@src="//www.azcentral.com/services/cobrand/header/"]')
	sleep 1
end

And(/^there should be an azcentral co-brand footer$/) do
	page.has_selector?(:xpath, './/iframe[@src="//pages.azcentral.com/generic-azcentral-footer/"]')
	sleep 1
end
And(/^there should be a 300x250 ad in the right rail$/) do
	page.has_selector?(:xpath, './/iframe[@id="google_ads_iframe_/7103/az-phoenix-C1531/poster_front/news/local/features_feelgood5_main_0"]')
	sleep 1
end
And(/^there should be a count of articles$/) do
 	page.has_text?("<p>1 of 36</p>")
 	sleep 1
end