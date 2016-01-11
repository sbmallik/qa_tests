Given(/^I am on the Comics Omniture page at "(.*?)"$/) do |url|
  visit url
end

Then(/^I should see the correct Ominture account code of 'gpaper158'$/) do
	page.has_text?('s_account="gpaper158";')
end

And(/^I should see the prop17 code equal 'life'$/) do
	page.has_text?('s.prop17 = "life";')
end

And(/^I should see the prop18 code equal 'comics'$/) do
	page.has_text?('s.prop18 = "comics";')
end

And(/^I should see the prop19 code equal 'front'$/) do
	page.has_text?('s.prop19 = "front";')
end

Then(/^I should see the prop23 code equal 'http:\/\/archive\.azcentral\.com\/thingstodo\/comics\/'$/) do
  page.has_text?('s.prop23 = "http://archive.azcentral.com/thingstodo/comics/";')
end