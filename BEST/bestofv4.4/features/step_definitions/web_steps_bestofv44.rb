# 1) Article ID test
Given(/^I have found this particular article ID on devbestof\.azcentral\.com: "(.*?)"$/) do |url|
  visit url
end
When(/^I put that same article ID into the bestof\.pnj\.com site: "(.*?)"$/) do |url2|
  visit url2
end
Then(/^I should not see the article content, but I should be redirected to the homepage of "(.*?)"$/) do |url3|
  page.current_path == url3
end



# 2) Search Results test #1 - Filtering Content
Given(/^I am looking at a results page on devbestof.azcentral.com$/) do
  visit "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks"
end
When(/^the filter feedback text says "(.*?)"$/) do |text|
	page.has_text?(text)
end
Then(/^I click on "(.*?)"$/) do |click1|
  page.find('a.filter-heading', :text => click1).click
end
And(/^I select 'OUTDOORS & RECREATION'$/) do
  page.find('li.filterby-js', :text => 'OUTDOORS & RECREATION').click
end
Then(/^the filter feedback text should say "(.*?)"$/) do |text2|
	page.has_text?(text2)
end



# 3) Search Results test #1 - Sorting Content
Given(/^I am looking at another results page on devbestof.azcentral.com$/) do
  visit "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks="
end
When(/^the filter feedback text now says "(.*?)"$/) do |text3|
	page.has_text?(text3)
end
Then(/^now I click on "(.*?)"$/) do |click2|
  page.find('a.filter-heading', :text => click2).click
end
And(/^I select 'Category'$/) do
  page.find('li.sortby-js', :match => :first).click 
end
Then(/^the filter feedback text should now say "(.*?)"$/) do |text3|
	page.has_text?(text3)
end



# 4) Search Results test #1 - West Valley
Given(/^I am looking at a results page on devbestof.azcentral.com now$/) do
  visit "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks="
end
When(/^the filter feedback text says "(.*?)" now$/) do |text4|
	page.has_text?(text4)
end
Then(/^I click on "(.*?)" now$/) do |click3|
  page.find('a.filter-heading', :text => click3).click
end
And(/^I select 'West Valley'$/) do
  page.find('li.filterby-js', :text => 'West Valley').click
end
Then(/^the filter feedback text should say "(.*?)" now$/) do |text5|
	page.has_text?(text5)
end



# 5) Login button test
Given(/^I am on "(.*?)"$/) do |url|
	visit url
end
When(/^I click the "(.*?)" button$/) do |login|
	click_link(login)
end
Then(/^I should arrive at the login url of: "(.*?)"$/) do |loginurl|
	page.current_path == loginurl
end



# 6) Login redirect test
Given(/^I am on "(.*?)" again$/) do |url|
	visit url
end
When(/^I click the "(.*?)" button again$/) do |login|
	click_link(login)
end
Then(/^I should arrive at the login url of: "(.*?)" again$/) do |loginurl1|
	page.current_path == loginurl1
end
And(/^I log into my account$/) do
  fill_in('username', :with => 'pni\dolezat')
  fill_in('password', :with => 'Amnesia54')
  first(:xpath, '//button[@type="submit"]').click
end
Then(/^I should be returned to this page "(.*?)"$/) do |url|
	page.current_path == url
end



#7) Login my account test
Given(/^I am on "(.*?)" a third time$/) do |url|
	visit url
end
When(/^I click the "(.*?)" button a third time$/) do |login|
	click_link(login)
end
Then(/^I should arrive at the login url of: "(.*?)" a third time$/) do |loginurl1|
	page.current_path == loginurl1
end
And(/^I log into my account again$/) do
  fill_in('username', :with => 'pni\dolezat')
  fill_in('password', :with => 'Amnesia54')
  first(:xpath, '//button[@type="submit"]').click
end
Then(/^I should be returned to this page "(.*?)" again$/) do |url|
	page.current_path == url
end
And(/^when I click on "(.*?)"$/) do |account|
	click_link(account)
	#<a href="https://account.azcentral.com">MY ACCOUNT</a>
end
Then(/^I should arrive at the 'My Account' page$/) do
	page.current_path == "https://account.azcentral.com/"
end



# 8) No login on PNJ
Given(/^I am on the PNJ site of "(.*?)"$/) do |url|
	visit url
end
Then(/^there should be no 'login' button$/) do
	page.should have_no_content('login')
end




=begin
Then(/^I see a resulting (\d+) pertinent articles$/) do |arg1|
    #find("input#search").set("kids" + "\n")
  within(".results"){
  	page.assert_selector('li.award', :count => arg1)
  }
end
Then(/^I am on this URL: "(.*?)"$/) do |link1|
  page.current_path == link1
end
=end

=begin
# 2) Filtering Content test
Given(/^I am on the resulting URL of the last 'Search Term' test at: "(.*?)"$/) do |url2|
  visit url2
end
When(/^I click on the word 'Categories' then click on 'Arts & Entertainment'$/) do
  page.find('a.filter-heading', :text => 'Categories').click
  page.find('li.filterby-js', :text => 'ARTS & ENTERTAINMENT').click
end
Then(/^I see a new resulting (\d+) pertinent articles$/) do |arg2|
  within(".results"){
    page.assert_selector('li.award', :count => arg2)
  }
end
Then(/^I am on this new URL: "(.*?)"$/) do |link2|
   page.current_path == link2
end


# 3) Sorting Content test
Given(/^I am now on the resulting URL of the last 'Filtering Content' test at: "(.*?)"$/) do |url3|
  visit url3
end
When(/^I click on the word 'Sort' then I click on 'Category'$/) do
  page.find('a.filter-heading', :text => 'Sort Type').click
  page.find('li.sortby-js', :match => :first).click 
end
Then(/^the URL will change to this: "(.*?)"$/) do |link3|
  page.current_path == link3
end


# 4) Article/Map test
Given(/^I am on an article page$/) do
  visit "http://devbestof.azcentral.com/winners/2014/14744850/best-alpine-getaway-arizona-snowbowl#"
end
When(/^I open the page I make sure the first main image is a photo$/) do
  page.find('a.photo', :text => 'Photo').click
  page.has_text?('<div id="photos" class="image element-container">')
  page.has_text?('<div id="photos" class="image element-container">')
  page.has_text?('<div id="video" class="video element-container hide">')
  page.has_text?('<div id="map" class="map hide element-container">')
end

Then(/^I click on the 'Video' icon and see the photo change to a Video, and the photo and map are hidden$/) do
  page.find('a.video', :text => 'Video').click
  page.has_text?('<a href="#" class="video selected" data-item="video">Video</a>')
  page.has_text?('<div id="photos" class="image element-container hide">')
  page.has_text?('<div id="map" class="map hide element-container">')
end
And(/^then I click on the 'Map' icon and see the video change to a map, and the photo and video are hidden$/) do
  page.find('a.map', :text => 'Map').click
  page.has_text?('<a href="#" class="map selected" data-item="map" data-centerlat="35.3291312885936" data-centerlng="-111.711044311523" data-locations="[{&quot;phone&quot;:&quot;(928) 779-1951&quot;,&quot;address&quot;:&quot;9300 N Snowbowl Rd&quot;,&quot;lat&quot;:&quot;35.3291312885936&quot;,&quot;lng&quot;:&quot;-111.711044311523&quot;,&quot;city&quot;:&quot;Flagstaff&quot;,&quot;name&quot;:null,&quot;default&quot;:true,&quot;url&quot;:&quot;http://www.arizonasnowbowl.com&quot;,&quot;state&quot;:&quot;AZ&quot;,&quot;email&quot;:null,&quot;zip_code&quot;:&quot;86001&quot;}]">Map</a>')
  page.has_text?('<div id="photos" class="image element-container hide">')
  page.has_text?('<div id="video" class="video element-container hide">')
end



# 5) Sharing tools
Given(/^I am on the current article page again at "(.*?)" and I want to share this page via the sharing tools$/) do |url|
  visit url
end

Then(/^the data-text should contain the correct article title for sharing via Facebook$/) do
  page.has_selector?(:xpath, '//a[@data-text="azcentral\'s BEST 2014 recognizes Children\'s Museum of Phoenix as the Best kids activity"]')
end

And(/^the href should contain the correct URL for sharing via Twitter$/) do
  page.has_selector?(:xpath, '//a[@href="https://twitter.com/share?url=http://devbestof.azcentral.com/winners/2014/14744893/&amp;text=azcentral\'s%20BEST%202014%20recognizes%20Best%20kids%20activity"]')
end

Then(/^the href should contain the correct URL for sharing via GooglePlus$/) do
  page.has_selector?(:xpath, '//a[@href="https://plus.google.com/share?url=http://devbestof.azcentral.com/winners/2014/14744893/best-kids-activity-childrens-museum-of-phoenix"]')
end

And(/^the href should contain the correct mailto for sharing via E-mail$/) do
  page.has_selector?(:xpath, '//a[@href="mailto:?subject=azcentral\'s%20BEST%202014%20awards%20Best%20kids%20activity&amp;body=azcentral\'s%20BEST%202014%20picked%20Children\'s%20Museum%20of%20Phoenix%20for%20the%20Best%20kids%20activity%20Check%20it%20out%3A%20%20http%3A%2F%2Fdevbestof.azcentral.com%2Fwinners%2F2014%2F14744893%2Fbest-kids-activity-childrens-museum-of-phoenix"]')
end
=end

