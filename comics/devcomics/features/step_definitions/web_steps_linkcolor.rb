Given(/^I am on the Comics CSS file at "(.*?)"$/) do |url|
  visit url
end

Then(/^I should see the correct CSS link color of 'color: #337ab7' for 'a, a:link, a:visited, a:hover, a:active'$/) do
	page.has_text?('a, a:link, a:visited, a:hover, a:active {
  color: #337ab7;')
end