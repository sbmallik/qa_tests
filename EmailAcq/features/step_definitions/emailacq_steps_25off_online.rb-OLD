#1) Create an Event in Online mode
Given(/^I am a user wants to enter a new event and I login to the 'online' version of the app$/) do
    visit ('http://photozian.com')
    sleep 5
    #choose('Yes')
    fill_in('login', :with => 'violeta.henderson@azcentral.com')
    fill_in('password', :with => 'Lionsv46')
    click_button('Enter')
    sleep 5
    #page.execute_script('window.open()')
    #new_window = page.driver.browser.window_handles.last
    #page.driver.browser.switch_to.window(new_window)
    #visit('http://photozian.com/?offline=no')
    #sleep 5
    page.find('span', :text => 'The Arizona Republic').click
    sleep 5
    click_button("Create event")
    sleep 5
end
When(/^I create a new event named "(.*?)" and the date should be "(.*?)"$/) do |eventname, eventdate|
    fill_in('Enter name of event', :with => eventname)
    fill_in('Date of event', :with => eventdate)
    click_button('Next')
    sleep 5
end
Then(/^the page will say "(.*?)"$/) do |text|
    page.has_text?(text)
end


# Step 2
Then(/^to add names offline, I open another window with the 'offline' version of the app$/) do
    #page.execute_script('window.open()')
    #new_window = page.driver.browser.window_handles.last
    #page.driver.browser.switch_to.window(new_window)
    visit ('http://photozian.com/?offline=yes')
    sleep 5
    page.find('span', :text => 'The Arizona Republic').click
    sleep 5
    click_button("Existing Event")
    sleep 5
end
And(/^I want to edit the new event I just created, I will navigate to it$/) do
    page.find('li', :text => 'Cooking with a Vegan Chef').click
    sleep 5
end
Then(/^I should be able to enter '25' random names$/) do
   #1
    fill_in('first_name', :with => 'again25offline1')
    sleep 1
    fill_in('last_name', :with => 'again25offline1')
    sleep 1
    fill_in('email', :with => 'again25offline1@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #2
    fill_in('first_name', :with => 'again25offline2')
    sleep 1
    fill_in('last_name', :with => 'again25offline2')
    sleep 1
    fill_in('email', :with => 'again25offline2@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #3
    fill_in('first_name', :with => 'again25offline3')
    sleep 1
    fill_in('last_name', :with => 'again25offline3')
    sleep 1
    fill_in('email', :with => 'again25offline3@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #4
    fill_in('first_name', :with => 'again25offline4')
    sleep 1
    fill_in('last_name', :with => 'again25offline4')
    sleep 1
    fill_in('email', :with => 'again25offline4@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #5
    fill_in('first_name', :with => 'again25offline5')
    sleep 1
    fill_in('last_name', :with => 'again25offline5')
    sleep 1
    fill_in('email', :with => 'again25offline5@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #6
    fill_in('first_name', :with => 'again25offline6')
    sleep 1
    fill_in('last_name', :with => 'again25offline6')
    sleep 1
    fill_in('email', :with => 'again25offline6@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #7
    fill_in('first_name', :with => 'again25offline7')
    sleep 1
    fill_in('last_name', :with => 'again25offline7')
    sleep 1
    fill_in('email', :with => 'again25offline7@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #8
    fill_in('first_name', :with => 'again25offline8')
    sleep 1
    fill_in('last_name', :with => 'again25offline8')
    sleep 1
    fill_in('email', :with => 'again25offline8@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #9
    fill_in('first_name', :with => 'again25offline9')
    sleep 1
    fill_in('last_name', :with => 'again25offline9')
    sleep 1
    fill_in('email', :with => 'again25offline9@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #10
    fill_in('first_name', :with => 'again25offline10')
    sleep 1
    fill_in('last_name', :with => 'again25offline10')
    sleep 1
    fill_in('email', :with => 'again25offline10@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #11
    fill_in('first_name', :with => 'again25offline11')
    sleep 1
    fill_in('last_name', :with => 'again25offline11')
    sleep 1
    fill_in('email', :with => 'again25offline11@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #12
    fill_in('first_name', :with => 'again25offline12')
    sleep 1
    fill_in('last_name', :with => 'again25offline12')
    sleep 1
    fill_in('email', :with => 'again25offline12@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #13
    fill_in('first_name', :with => 'again25offline13')
    sleep 1
    fill_in('last_name', :with => 'again25offline13')
    sleep 1
    fill_in('email', :with => 'again25offline13@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #14
    fill_in('first_name', :with => 'again25offline14')
    sleep 1
    fill_in('last_name', :with => 'again25offline14')
    sleep 1
    fill_in('email', :with => 'again25offline14@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #15
    fill_in('first_name', :with => 'again25offline15')
    sleep 1
    fill_in('last_name', :with => 'again25offline15')
    sleep 1
    fill_in('email', :with => 'again25offline15@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #16
    fill_in('first_name', :with => 'again25offline16')
    sleep 1
    fill_in('last_name', :with => 'again25offline16')
    sleep 1
    fill_in('email', :with => 'again25offline16@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #17
    fill_in('first_name', :with => 'again25offline17')
    sleep 1
    fill_in('last_name', :with => 'again25offline17')
    sleep 1
    fill_in('email', :with => 'again25offline17@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #18
    fill_in('first_name', :with => 'again25offline18')
    sleep 1
    fill_in('last_name', :with => 'again25offline18')
    sleep 1
    fill_in('email', :with => 'again25offline18@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #19
    fill_in('first_name', :with => 'again25offline19')
    sleep 1
    fill_in('last_name', :with => 'again25offline19')
    sleep 1
    fill_in('email', :with => 'again25offline19@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #20
    fill_in('first_name', :with => 'again25offline20')
    sleep 1
    fill_in('last_name', :with => 'again25offline20')
    sleep 1
    fill_in('email', :with => 'again25offline20@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #21
    fill_in('first_name', :with => 'again25offline21')
    sleep 1
    fill_in('last_name', :with => 'again25offline21')
    sleep 1
    fill_in('email', :with => 'again25offline21@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #22
    fill_in('first_name', :with => 'again25offline22')
    sleep 1
    fill_in('last_name', :with => 'again25offline22')
    sleep 1
    fill_in('email', :with => 'again25offline22@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #23
    fill_in('first_name', :with => 'again25offline23')
    sleep 1
    fill_in('last_name', :with => 'again25offline23')
    sleep 1
    fill_in('email', :with => 'again25offline23@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #24
    fill_in('first_name', :with => 'again25offline24')
    sleep 1
    fill_in('last_name', :with => 'again25offline24')
    sleep 1
    fill_in('email', :with => 'again25offline24@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #25
    fill_in('first_name', :with => 'again25offline25')
    sleep 1
    fill_in('last_name', :with => 'again25offline25')
    sleep 1
    fill_in('email', :with => 'again25offline25@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
end


#Step 3
Then(/^to Sync the names, I open another window with the 'online' version of the app$/) do
    #page.execute_script('window.open()')
    #new_window = page.driver.browser.window_handles.last
    #page.driver.browser.switch_to.window(new_window)
    visit ('http://photozian.com/?offline=no')
    sleep 5
    page.find('span', :text => 'The Arizona Republic').click
    sleep 5
    click_button("Existing Event")
    sleep 5
end
Then(/^I select the same previously created event with 'offline' uploads pending$/) do
    page.find('li', :text => 'Cooking with a Vegan Chef').click
    sleep 5
end
And(/^I click the 'Sync' button$/) do
    page.find('a.button-collapse').click
    sleep 3
    click_link('Sync')
    sleep 3
    #<button style="display: block;" class="close-button" id="sync-button-sync">Sync</button>
    click_button('Sync')
    #page.find('button', :text => 'Sync').click
    sleep 5
    page.find('button', :text => 'Close').click
    sleep 5
end
Then(/^those changes should be received in Exact Target$/) do
  # CONTACT ERIN SANSOME THE NEXT DAY TO SEE IF ENTRIES ARE THERE
end



# Step 4
Then(/^I open another window with the 'online' version of the app$/) do
    #page.execute_script('window.open()')
    #new_window = page.driver.browser.window_handles.last
    #page.driver.browser.switch_to.window(new_window)
    visit('http://photozian.com/?offline=no')
    sleep 5
    page.find('span', :text => 'The Arizona Republic').click
    sleep 5
    click_button("Existing Event")
    sleep 5
end
And(/^I select the same previously created event$/) do
    page.find('li', :text => 'Cooking with a Vegan Chef').click
    sleep 5
end
Then(/^I should be able to enter another '25' random names$/) do
    #1
    fill_in('first_name', :with => 'again25online1')
    sleep 1
    fill_in('last_name', :with => 'again25online1')
    sleep 1
    fill_in('email', :with => 'again25online1@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #2
    fill_in('first_name', :with => 'again25online2')
    sleep 1
    fill_in('last_name', :with => 'again25online2')
    sleep 1
    fill_in('email', :with => 'again25online2@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #3
    fill_in('first_name', :with => 'again25online3')
    sleep 1
    fill_in('last_name', :with => 'again25online3')
    sleep 1
    fill_in('email', :with => 'again25online3@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #4
    fill_in('first_name', :with => 'again25online4')
    sleep 1
    fill_in('last_name', :with => 'again25online4')
    sleep 1
    fill_in('email', :with => 'again25online4@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #5
    fill_in('first_name', :with => 'again25online5')
    sleep 1
    fill_in('last_name', :with => 'again25online5')
    sleep 1
    fill_in('email', :with => 'again25online5@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #6
    fill_in('first_name', :with => '6online')
    fill_in('last_name', :with => '6online')
    fill_in('email', :with => '6online@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #7
    fill_in('first_name', :with => 'again25online7')
    sleep 1
    fill_in('last_name', :with => 'again25online7')
    sleep 1
    fill_in('email', :with => 'again25online7@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #8
    fill_in('first_name', :with => 'again25online8')
    sleep 1
    fill_in('last_name', :with => 'again25online8')
    sleep 1
    fill_in('email', :with => 'again25online8@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #9
    fill_in('first_name', :with => 'again25online9')
    sleep 1
    fill_in('last_name', :with => 'again25online9')
    sleep 1
    fill_in('email', :with => 'again25online9@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #10
    fill_in('first_name', :with => 'again25online10')
    sleep 1
    fill_in('last_name', :with => 'again25online10')
    sleep 1
    fill_in('email', :with => 'again25online10@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #11
    fill_in('first_name', :with => 'again25online11')
    sleep 1
    fill_in('last_name', :with => 'again25online11')
    sleep 1
    fill_in('email', :with => 'again25online11@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #12
    fill_in('first_name', :with => 'again25online12')
    sleep 1
    fill_in('last_name', :with => 'again25online12')
    sleep 1
    fill_in('email', :with => 'again25online12@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #13
    fill_in('first_name', :with => 'again25online13')
    sleep 1
    fill_in('last_name', :with => 'again25online13')
    sleep 1
    fill_in('email', :with => 'again25online13@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #14
    fill_in('first_name', :with => 'again25online14')
    sleep 1
    fill_in('last_name', :with => 'again25online14')
    sleep 1
    fill_in('email', :with => 'again25online14@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #15
    fill_in('first_name', :with => 'again25online15')
    sleep 1
    fill_in('last_name', :with => 'again25online15')
    sleep 1
    fill_in('email', :with => 'again25online15@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #16
    fill_in('first_name', :with => 'again25online16')
    sleep 1
    fill_in('last_name', :with => 'again25online16')
    sleep 1
    fill_in('email', :with => 'again25online16@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #17
    fill_in('first_name', :with => 'again25online17')
    sleep 1
    fill_in('last_name', :with => 'again25online17')
    sleep 1
    fill_in('email', :with => 'again25online17@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #18
    fill_in('first_name', :with => 'again25online18')
    sleep 1
    fill_in('last_name', :with => 'again25online18')
    sleep 1
    fill_in('email', :with => 'again25online18@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #19
    fill_in('first_name', :with => 'again25online19')
    sleep 1
    fill_in('last_name', :with => 'again25online19')
    sleep 1
    fill_in('email', :with => 'again25online19@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #20
    fill_in('first_name', :with => 'again25online20')
    sleep 1
    fill_in('last_name', :with => 'again25online20')
    sleep 1
    fill_in('email', :with => 'again25online20@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #21
    fill_in('first_name', :with => 'again25online21')
    sleep 1
    fill_in('last_name', :with => 'again25online21')
    sleep 1
    fill_in('email', :with => 'again25online21@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #22
    fill_in('first_name', :with => 'again25online22')
    sleep 1
    fill_in('last_name', :with => 'again25online22')
    sleep 1
    fill_in('email', :with => 'again25online22@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #23
    fill_in('first_name', :with => 'again25online23')
    sleep 1
    fill_in('last_name', :with => 'again25online23')
    sleep 1
    fill_in('email', :with => 'again25online23@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #24
    fill_in('first_name', :with => 'again25online24')
    sleep 1
    fill_in('last_name', :with => 'again25online24')
    sleep 1
    fill_in('email', :with => 'again25online24@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
    click_button('Enter another one')
    sleep 1
    #25
    fill_in('first_name', :with => 'again25online25')
    sleep 1
    fill_in('last_name', :with => 'again25online25')
    sleep 1
    fill_in('email', :with => 'again25online25@test.com')
    sleep 1
    check("*I am 18 years or older")
    sleep 1
    click_button('Submit')
    sleep 5
end
Then(/^those changes should be received in Exact Target immediately without pressing Sync$/) do
  # CONTACT ERIN SANSOME THE NEXT DAY TO SEE IF ENTRIES ARE THERE
end
