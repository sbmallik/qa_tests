Given(/^I am on the BESTOF home page at "(.*?)" and I see the promo banner$/) do |url|
  visit url
end

Then(/^I should find span link with the text 'Nominate your favorites!' and click it$/) do
  find('.best-desktop-nom', :text => 'Nominate your favorites!').click
end

Then(/^I should be redirected to this URL "(.*?)"$/) do |link|
  current_url_fragment = link
end