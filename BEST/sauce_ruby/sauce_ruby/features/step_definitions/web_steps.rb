# -u JoshJonesGannett -k 330ff6c4-fe41-40d0-84d0-09b3d91d3b92

#sauce-connect/bin/SC.exe -u JoshJonesGannett -k 330ff6c4-fe41-40d0-84d0-09b3d91d3b92 —doctor

#bin/sc -u JoshJonesGannett -k 330ff6c4-fe41-40d0-84d0-09b3d91d3b92 --doctor

#bin/sc -u JoshJonesGannett -k 330ff6c4-fe41-40d0-84d0-09b3d91d3b92 -v -l mylog.txt


# 1) Article ID test
Given(/^I have found this particular article ID on devbestof\.azcentral\.com: "(.*?)"$/) do |url|
  visit url
  sleep 3
end
When(/^I put that same article ID into the bestof\.pnj\.com site: "(.*?)"$/) do |url2|
  visit url2
  sleep 3
end
Then(/^I should not see the article content, but I should be redirected to the homepage of "(.*?)"$/) do |url3|
  page.current_path == url3
  sleep 3
end


# 2) Search Results test #1 - Filtering Content
Given(/^I am looking at a results page on devbestof.azcentral.com$/) do
  visit "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks"
  sleep 3
end
When(/^the filter feedback text says "(.*?)"$/) do |text|
	page.has_text?(text)
  sleep 3
end
Then(/^I click on "(.*?)"$/) do |click1|
  page.find('a.filter-heading', :text => click1).click
  sleep 3
end
And(/^I select 'OUTDOORS & RECREATION'$/) do
  page.find('li.filterby-js', :text => 'OUTDOORS & RECREATION').click
  sleep 3
end
Then(/^the filter feedback text should say "(.*?)"$/) do |text2|
	page.has_text?(text2)
  sleep 3
end


# 3) Search Results test #1 - Sorting Content
Given(/^I am looking at another results page on devbestof.azcentral.com$/) do
  visit "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks="
  sleep 3
end
When(/^the filter feedback text now says "(.*?)"$/) do |text3|
	page.has_text?(text3)
  sleep 3
end
Then(/^now I click on "(.*?)"$/) do |click2|
  page.find('a.filter-heading', :text => click2).click
  sleep 3
end
And(/^I select 'Category'$/) do
  page.find('li.sortby-js', :match => :first).click 
  sleep 3
end
Then(/^the filter feedback text should now say "(.*?)"$/) do |text3|
	page.has_text?(text3)
  sleep 3
end


# 4) Search Results test #1 - West Valley
Given(/^I am looking at a results page on devbestof.azcentral.com now$/) do
  visit "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks="
  sleep 3
end
When(/^the filter feedback text says "(.*?)" now$/) do |text4|
	page.has_text?(text4)
  sleep 3
end
Then(/^I click on "(.*?)" now$/) do |click3|
  page.find('a.filter-heading', :text => click3).click
  sleep 3
end
And(/^I select 'West Valley'$/) do
  page.find('li.filterby-js', :text => 'West Valley').click
  sleep 3
end
Then(/^the filter feedback text should say "(.*?)" now$/) do |text5|
	page.has_text?(text5)
  sleep 3
end


# 5) Login button test
Given(/^I am on "(.*?)"$/) do |url|
  visit url
  sleep 3
end
When(/^I click the "(.*?)" button$/) do |login|
  click_link(login)
  sleep 3
end
Then(/^I should arrive at the login url of: "(.*?)"$/) do |loginurl|
  page.current_path == loginurl
  sleep 3
end



# 6) Login redirect test
Given(/^I am on "(.*?)" again$/) do |url|
  visit url
  sleep 3
end
When(/^I click the "(.*?)" button again$/) do |login|
  click_link(login)
  sleep 3
end
Then(/^I should arrive at the login url of: "(.*?)" again$/) do |loginurl1|
  page.current_path == loginurl1
  sleep 3
end
And(/^I log into my account$/) do
  fill_in('username', :with => 'ryakon@gmail.com')
  sleep 3
  fill_in('password', :with => '1hotsnowcone')
  sleep 3
  first(:xpath, '//button[@type="submit"]').click
  sleep 3
end
Then(/^I should be returned to this page "(.*?)"$/) do |url|
  page.current_path == url
  sleep 3
end



#7) Login my account test
Given(/^I am on "(.*?)" a third time$/) do |url|
  visit url
  sleep 3
end
When(/^I click the "(.*?)" button a third time$/) do |login|
  click_link(login)
  sleep 3
end
Then(/^I should arrive at the login url of: "(.*?)" a third time$/) do |loginurl1|
  page.current_path == loginurl1
  sleep 3
end
And(/^I log into my account again$/) do
  fill_in('username', :with => 'ryakon@gmail.com')
  sleep 3
  fill_in('password', :with => '1hotsnowcone')
  sleep 3
  first(:xpath, '//button[@type="submit"]').click
  sleep 3
end
Then(/^I should be returned to this page "(.*?)" again$/) do |url|
  page.current_path == url
  sleep 3
end
And(/^when I click on "(.*?)"$/) do |account|
  click_link(account)
  #<a href="https://account.azcentral.com">MY ACCOUNT</a>
  sleep 3
end
Then(/^I should arrive at the 'My Account' page$/) do
  page.current_path == "https://account.azcentral.com/"
  sleep 3
end



# 8) No login on PNJ
Given(/^I am on the PNJ site of "(.*?)"$/) do |url|
  visit url
  sleep 3
end
Then(/^there should be no 'login' button$/) do
  page.should have_no_content('login')
  sleep 3
end
