# 1 Check Newsletters
Given(/^I am a user who is logged into Indy Star: "(.*?)"$/) do |url|
    visit url
    fill_in('username', :with => 'ryakon@gmail.com')
    fill_in('password', :with => '1hotsnowcone')
    click_button('Log in')
    sleep 3
 end

When(/^I go to this url newsletter page: "(.*?)"$/) do |url2|
	page.execute_script('window.open()')
	new_window = page.driver.browser.window_handles.last
	page.driver.browser.switch_to.window(new_window)
	visit(url2)
	sleep 3
end

Then(/^I click on the "(.*?)" button$/) do |arg1|
	page.find(:css, 'div.ldsnMWN-button', :text => arg1).click
	sleep 3
end

And(/^I am able to see my chosen newsletters$/) do
  #page.has_selector?(:xpath, './/div[@id="google_ads_iframe_/7103/az-phoenix-C1531/728x90_1/classifieds_0__container__"]')
  sleep 3
end

And(/^then I close the newsletter window$/) do
	page.find(:css, 'div.ldsnMWN-x-out', :text => 'x').click
	sleep 3
end


Then(/^I click on the "(.*?)" button again$/) do |arg2|
	page.find(:css, 'div.ldsnMWN-button', :text => arg2).click
	sleep 3
end

And(/^I check box next to 'Star Sports newsletter'$/) do
	page.find(:xpath, '//div[@newsletter-name="Star Sports newsletter"]').click
 	sleep 3
end

And(/^I enter my correct email address again: "(.*?)"$/) do |arg3|
	page.find(:xpath, '//div[@id="ldsnMWN-emailInput-modal"]').set arg3
	sleep 3
end

And(/^I click on "(.*?)"$/) do |arg4|
	page.find(:xpath, '//div[@class="ldsnMWN-button ldsnMWN-subscribe-modal-js"]', :text => arg4).click
  sleep 3
end

Then(/^I will see the "(.*?)" confirmation message window$/) do |arg5|
	page.has_text?(arg5)
  sleep 3
end

And(/^then I close the 'Thank you!' confirmation window$/) do
	#page.find(:xpath, '//div[@class="ldsnMWN-x-out-thanks"]', :text => 'x').click
	page.find(:css, 'div.ldsnMWN-x-out', :text => 'x').click
	#page.find(:css, 'div.ldsnMWN-x-out-thanks', :text => 'x').click
	sleep 3
end



# 3 Check Mobile Views
Given(/^I go to this url: "(.*?)" and the browser window is only "(.*?)" pixels wide by "(.*?)" pixels high$/) do |url, arg2, arg3|
 	page.driver.browser.manage.window.resize_to(arg2, arg3)
	visit url
	sleep 3
end

Then(/^I will see the correct class=overlay height code of "(.*?)" on the page$/) do |arg1|
	page.has_text?('<div class="overlay " role="contentinfo" style="height: {#arg1};">')
	#page.has_selector?(:xpath, './/div[@id="google_ads_iframe_/7103/az-phoenix-C1531/728x90_1/classifieds_0__container__"]')
	sleep 3	
end



#4 Check Desktop Views
Given(/^I go to this url: "(.*?)" and the browser window is full at "(.*?)" pixels wide by "(.*?)" pixels high$/) do |url, arg2, arg3|
 	page.driver.browser.manage.window.resize_to(arg2, arg3)
	visit url
	sleep 3
end

Then(/^I will also see the correct class=overlay height code of "(.*?)" on the page$/) do |arg1|
	page.has_text?('<div class="overlay " role="contentinfo" style="height: {#arg1};">')
	sleep 3
end



=begin


	Scenario: Edit Newsletters
		Given I am a user who is logged into Indy Star again: "https://account.indystar.com/" 
		When I go to this url newsletter page again: "http://mhigh-preprod-app.indystar.com/news/?test=true&debug=true&promo=default"
		Then I click on the "View our Newsletters" button again
		And I check box next to 'Star Sports newsletter'
		And I enter my correct email address again: "ryakon@gmail.com"
		And I click on "Subscribe"
		Then I will see the "You have successfully updated your newsletter subscriptions." confirmation message window
		And then I close the confirmation window

	Scenario: Check Mobile Views
		Given I go to this url: "http://mhigh-preprod-app.indystar.com/news/?test=true&debug=true&promo=default" and the browser window is only "400" pixels wide by "420" pixels high
		Then I will see the correct class=overlay height code of "6170px" on the page


	Scenario: Check Desktop Views
		Given I go to this url: "http://mhigh-preprod-app.indystar.com/news/?test=true&debug=true&promo=default" and the browser window is full at "1088" pixels wide by "420" pixels high
		Then I will see the correct class=overlay height code of "5892px" on the page



# 2 Edit Newsletters
Given(/^I am a user who is logged into Indy Star again: "(.*?)"$/) do |url3|
    visit url3
    fill_in('username', :with => 'ryakon@gmail.com')
    fill_in('password', :with => '1hotsnowcone')
    click_button('Log in')
    sleep 3
end

When(/^I go to this url newsletter page again: "(.*?)"$/) do |url4|
	page.execute_script('window.open()')
	new_window = page.driver.browser.window_handles.last
	page.driver.browser.switch_to.window(new_window)
	visit(url4)
	sleep 3
end

Then(/^I click on the "(.*?)" button again$/) do |arg2|
	page.find(:css, 'div.ldsnMWN-button', :text => arg2).click
	sleep 3
end

And(/^I check box next to 'Star Sports newsletter'$/) do
	page.find(:xpath, '//div[@newsletter-name="Star Sports newsletter"]').click
 	sleep 3
end

And(/^I enter my correct email address again: "(.*?)"$/) do |arg3|
	page.find(:xpath, '//div[@id="ldsnMWN-emailInput-modal"]').set arg3
	sleep 3
end

And(/^I click on "(.*?)"$/) do |arg4|
	page.find(:xpath, '//div[@class="ldsnMWN-button ldsnMWN-subscribe-modal-js"]', :text => arg4).click
  sleep 3
end

Then(/^I will see the "(.*?)" confirmation message window$/) do |arg5|
	page.has_text?(arg5)
  sleep 3
end

And(/^then I close the confirmation window$/) do
	page.find(:xpath, '//div[@class="ldsnMWN-x-out-thanks"]', :text => 'x').click

	#page.find(:css, 'div.ldsnMWN-x-out', :text => 'x').click
	#page.find(:css, 'div.ldsnMWN-x-out-thanks', :text => 'x').click
end


# 3
Given(/^I go to this url: "(.*?)" and the browser window is only "(.*?)" pixels wide by "(.*?)" pixels high$/) do |url, arg2, arg3|
  visit url
end

Then(/^I will see the correct class=overlay height code of "(.*?)" on the page$/) do |arg1|
	page.has_text?('<div class="overlay " role="contentinfo" style="height: {#arg1};">')
	#page.has_selector?(:xpath, './/div[@id="google_ads_iframe_/7103/az-phoenix-C1531/728x90_1/classifieds_0__container__"]')
end



#4
Given(/^I go to this url: "(.*?)" and the browser window is full at "(.*?)" pixels wide by "(.*?)" pixels high$/) do |url, arg2, arg3|
  visit url
end

Then(/^I will also see the correct class=overlay height code of "(.*?)" on the page$/) do |arg1|
	page.has_text?('<div class="overlay " role="contentinfo" style="height: {#arg1};">')
end
=end


=begin
Given(/^I am on the live Comics home page at "(.*?)"$/) do |url|
  visit url
end

Then(/^the code: 'span.comic-date-r' with today's date "(.*?)" appears ten times on the page$/) do |date|
	page.should have_selector 'span.comic-date-r', :text => date, :count => 10

	    within(:css, 'div.story-ribbon-content') { find_link(text51).click }
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click

	page.has_selector?(:xpath, './/div[@id="google_ads_iframe_/7103/az-phoenix-C1531/728x90_1/classifieds_0__container__"]')

	page.assert_selector('img.comic-display', :count => 1)

<div class="ldsnMWN-button ldsnMWN-button-view-js ldsnMWN-type-default">View our Newsletters</div>


mobile
<div class="overlay " role="contentinfo" style="height: 6170px;">

desktop

end
=end