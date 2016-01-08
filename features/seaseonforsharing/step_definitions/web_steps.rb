Given(/^I am on the MOBILE SFS page at 'http:\/\/pages\.azcentral\.com\/season\-for\-sharing\/donate\.html\?mobile'$/) do
  visit "http://pages.azcentral.com/season-for-sharing/donate.html?mobile"
end

Then(/^I should see the text "(.*?)"$/) do |text|
  page.should have_content(text)
end

Then(/^I should also see the text "(.*?)"$/) do |text|
  page.should have_content(text)
end