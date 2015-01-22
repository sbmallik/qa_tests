When(/^I GET "(.*?)"$/) do |url|
  @last_response = HTTParty.get(url)
end

Then(/^the JSON response should include the correct Chartbeat UID code of: "(.*?)"$/) do |text1|
  JSON.parse(@last_response.body).to_s.should match text1
end

Then(/^the JSON response should NOT include "(.*?)"$/) do |text2|
  JSON.parse(@last_response.body).to_s.should_not match text2
end