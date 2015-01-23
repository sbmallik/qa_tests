When(/^I open "(.*?)"$/) do |url1|
  visit url1
end

Then(/^I should see the link to "(.*?)" on that page$/) do |link1|
  page.has_text?(link1)
end

When(/^I then open "(.*?)"$/) do |url2|
  visit url2
end

Then(/^I should also see a link to "(.*?)" on that page$/) do |link2|
  page.has_text?(link2)
end




When(/^I GET "(.*?)"$/) do |url|
  @last_response = HTTParty.get(url)
end

Then(/^the JSON response should include the correct Chartbeat UID code of: "(.*?)"$/) do |text1|
  JSON.parse(@last_response.body).to_s.should match text1
end

Then(/^the JSON response should NOT include "(.*?)"$/) do |text2|
  JSON.parse(@last_response.body).to_s.should_not match text2
end