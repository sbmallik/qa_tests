#1) Create an Event in entry mode
Given(/^I am a user wants to enter a new event and I login to the app$/) do
    visit ('http://photozian.com')
    sleep 5
    fill_in('login', :with => 'violeta.henderson@azcentral.com')
    sleep 1
    fill_in('password', :with => 'Lionsv46')
    click_button('Enter')
    sleep 5
    page.find('span', :text => 'The Arizona Republic').click
    sleep 5
    click_button("Create event")
    sleep 5
end
When(/^I create a new event and the date should be 'Dec 21, 2015'$/) do
    fill_in('Enter name of event', :with => "Auto-OSX10-android")
    sleep 1
    fill_in('Date of event', :with => "12/21/2015")
    sleep 1
    click_button('Next')
    sleep 5
end
Then(/^the page will say "(.*?)"$/) do |text|
    page.has_text?(text)
    sleep 5
end

# Step 4
Then(/^I open a new browser and click on "(.*?)"$/) do |existing|
    click_button(existing)
    sleep 5
end
And(/^I select the same previously created event$/) do
    page.find('li', :text => "Auto-OSX10-android").click
    sleep 5
end
Then(/^I should be able to enter '5' random names$/) do
    #1
    fill_in('first_name', :with => 'OSX10-android-1')
    sleep 1
    fill_in('last_name', :with => 'OSX10-android-1')
    sleep 1
    fill_in('email', :with => 'OSX10-android-1@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #2
    fill_in('first_name', :with => 'OSX10-android-2')
    sleep 1
    fill_in('last_name', :with => 'OSX10-android-2')
    sleep 1
    fill_in('email', :with => 'OSX10-android-2@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #3
    fill_in('first_name', :with => 'OSX10-android-3')
    sleep 1
    fill_in('last_name', :with => 'OSX10-android-3')
    sleep 1
    fill_in('email', :with => 'OSX10-android-3@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #4
    fill_in('first_name', :with => 'OSX10-android-4')
    sleep 1
    fill_in('last_name', :with => 'OSX10-android-4')
    sleep 1
    fill_in('email', :with => 'OSX10-android-4@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #5
    fill_in('first_name', :with => 'OSX10-android-5')
    sleep 1
    fill_in('last_name', :with => 'OSX10-android-5')
    sleep 1
    fill_in('email', :with => 'OSX10-android-5@test.com')
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
end
Then(/^those changes should be received in Exact Target immediately$/) do
  # CONTACT ERIN SANSOME THE NEXT DAY TO SEE IF ENTRIES ARE THERE
end