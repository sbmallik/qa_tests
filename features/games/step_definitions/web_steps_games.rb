Given(/^that I'm on this url "(.*?)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I want to make sure that the module will feature (\d+) games that are randomly refreshed$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I verify that there are two headlines, images and Play Now buttons$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I verify that one links to "(.*?)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I verify that there is a "(.*?)" section$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I verify that there are four customizable More Links for additional promotion$/) do
  pending # Write code here that turns the phrase above into concrete actions
end



=begin
# 1) Find a school on the devwww pages
Given(/^I am on this H\.S\. Sports page: "(.*?)"$/) do |url|
  visit url
end

When(/^I click on the dropdown 'Choose a Sport'$/) do
  page.find('select#choose-sport').click
  sleep 2
end

Then(/^I should see the option "(.*?)" in the menu$/) do |text|
  page.find('option', :text => text)
  sleep 2
end


# 2) Hide that school in the Admin tool
Given(/^I am on the admin tool in the 'Sports' section at "(.*?)" and I login$/) do |url|
  visit url
  fill_in('email', :with => 'tdolezal@azcentral.com')
  fill_in('password', :with => 'Nascar623')
  click_button('Log in')
  sleep 2
end

When(/^I click on 'Edit' button next to the sport 'Baseball'$/) do
  page.find("a[href='/sports/4/edit']").click
  sleep 2
end

When(/^I check the box labeled "(.*?)"$/) do |check|
  check(check)
  sleep 2
end

When(/^then I click on "(.*?)"$/) do |submit|
  click_button(submit)
  sleep 2
end


# 3) Chosen school should now be hidden on devwww pages
Given(/^I am on this H\.S\. Sports page: "(.*?)" again$/) do |url|
  visit url
end

When(/^I click on the dropdown 'Choose a Sport' again$/) do
  page.find('select#choose-sport').click
  sleep 2
end

Then(/^I should NOT see the option "(.*?)" in the menu$/) do |text|
  page.should have_no_content(text)
  sleep 2
end


# 4) UNHide that school in the Admin tool
Given(/^I am on the admin tool in the 'Sports' section at "(.*?)" and I login again$/) do |url|
  visit url
  fill_in('email', :with => 'tdolezal@azcentral.com')
  fill_in('password', :with => 'Nascar623')
  click_button('Log in')
  sleep 2
end

When(/^I click on 'Edit' button next to the sport 'Baseball' again$/) do
  page.find("a[href='/sports/4/edit']").click
  sleep 2
end

When(/^I uncheck the box labeled "(.*?)"$/) do |check|
  uncheck(check)
  sleep 2
end

When(/^then I click on "(.*?)" again$/) do |submit|
  click_button(submit)
  sleep 2
end


# 5) Verify that the sport is back on the devwww pages
Given(/^I am on this H\.S\. Sports page: "(.*?)" for the third time$/) do |url|
  visit url
end

When(/^I click on the dropdown 'Choose a Sport' for the third time$/) do
  page.find('select#choose-sport').click
  sleep 2
end

Then(/^I should see the option "(.*?)" in the menu for the third time$/) do |text|
  page.find('option', :text => text)
  sleep 2
end
=end