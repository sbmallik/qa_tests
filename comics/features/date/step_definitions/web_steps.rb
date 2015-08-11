Given(/^I am on the live Comics home page at "(.*?)"$/) do |url|
  visit url
end

Then(/^the code: 'span.comic-date-r' with today's date "(.*?)" appears ten times on the page$/) do |date|
	page.should have_selector 'span.comic-date-r', :text => date, :count => 10
end