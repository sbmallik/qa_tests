Given(/^I am a user wants to enter new events$/) do
# navigate to url 
      visit ('http://photozian.com/login?next=%2F')
      page.should have_css('Do you a work for Gannett?')
      Choose('yes')
end

When(/^user log ins to application with$/) do
    fill_in('username', :with => 'violeta.henderson@azcentral.com')
    fill_in('password', :with => 'Lionsv46')
    click_button('Enter')#click the login button
    #check the url
end

Then(/^as a user I will be able to enter new events$/) do

    click_button('Create event')#click the event button
    fill_in('enter name of event')
    fill_in('date of Event') 
    click_button('Next')#click on next button
end

Given(/^as a user I want to edit a saved event$/) do
# navigate url and then select arizona republic 
     visit ('http://photozian.com/login?next=%2F')
    
end

When(/^user navigates to existing events in email aquisition app$/) do
     visit ('http://photozian.com/login?next=%2F')
     fill_in('username', :with => 'violeta.henderson@azcentral.com')
     fill_in('password', :with => 'Lionsv46')
     click_button('Enter')#click the login button
end

Then(/^user will have the ability to edit a saved event from the list$/) do
     click_button('Existing event')
     expect(page).to have_css('event-id "218047841"')
     click_link('The Arizona Republic')
     #will see a list of existing events that user can edit 
     expect(page).to have _css('event-id "216949226"event-edit"')

end

Given(/^that I want to log in to the email acquisition app$/) do
# log in
# enter password 
    
end

When(/^I visit photozian\.com$/) do
    visit ('http://photozian.com/login?next=%2F'
end

Then(/^I should see a login page that contains a username and password field$/) do
     visit ('http://photozian.com/login?next=%2F')
     fill_in('username', :with => 'violeta.henderson@azcentral.com')
     fill_in('password', :with => 'Lionsv46') 
     click_button('Enter')
end

Then(/^should have a button that ask me if I'm a Gannett employee$/) do
     page.should have_css('Do you a work for Gannett?')
     
end

Then(/^should have a single button that says "([^"]*)"$/) do |arg1|
     Click_button('Enter')

end     

Then(/^the radio button should be above the username and password field$/) do
# this validates the location on screen of the radion button are you gannett employee 
     choose('yes') 
end

Then(/^the "([^"]*)" button should be the last element on the screen$/) do |arg1|
#this validates the enter button is the element on the screen 
  #    expect(current_path).to eq('')
    click_button('Enter')
end
