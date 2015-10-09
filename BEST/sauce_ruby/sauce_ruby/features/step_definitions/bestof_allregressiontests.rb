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


# 2) Search, Filtering and Sorting Content
Given(/^I am on the Azcentral's Best page at: "(.*?)"$/) do |url|
  visit url
  sleep 4
end
When(/^I enter the term 'kids' in the search box$/) do
  fill_in('Search all winners', :with => "kids" + "\n")
  sleep 4
end
Then(/^the filter feedback text says "(.*?)"$/) do |text|
  page.has_text?(text)
  sleep 4
end
#Then(/^I see a resulting (\d+) pertinent articles$/) do |arg1|
#  within("ul.winner-list"){
#    page.assert_selector('li', :count => arg1)
#  }
#end
Then(/^I am on this URL: "(.*?)"$/) do |link1|
  page.current_path == link1
  sleep 25
end
When(/^I click on the word 'Filter' then click on 'Arts & Entertainment'$/) do
  page.find('a.filter-button', :text => 'Filter').click
  #click_link("Filter")
  sleep 4
  page.find('li.filterby-js', :match => :first).click
  sleep 4 
end
Then(/^I am on this new URL: "(.*?)"$/) do |url|
  page.current_path == url
  sleep 4
end
Then(/^I click on the word 'Sort' then I click on 'Category'$/) do
  #click_link("Sort")
  page.find('a.sort-button', :text => 'Sort').click
  sleep 4
  page.find('li.sortby-js', :match => :first).click
  sleep 4 
end
Then(/^the URL will change to this: "(.*?)"$/) do |url|
  page.current_path == url
  sleep 4
end


# 3) More winners near me test
Given(/^I am on an article page$/) do
  visit "http://devbestof.azcentral.com/winners/2014/14744893/best-kids-activity-childrens-museum-of-phoenix"
  sleep 4
end
When(/^I want to make sure there are articles in the "(.*?)" section$/) do |text|
  page.has_text?(text)
  sleep 4
end
Then(/^I will see a resulting (\d+) pertinent articles$/) do |links|
  within("ul#winners-near-me"){
    page.assert_selector('li.award', :count => links)
  }
  sleep 4
end


# 4) Sharing tools
Given(/^I am on the current article page again at "(.*?)" and I want to share this page via the sharing tools$/) do |url|
  visit url
  sleep 4
end
Then(/^the data-text should contain the correct article title for sharing via Facebook$/) do
  page.has_selector?(:xpath, '//a[@data-text="azcentral\'s BEST 2014 recognizes Children\'s Museum of Phoenix as the Best kids activity"]')
  sleep 4
end
And(/^the href should contain the correct URL for sharing via Twitter$/) do
  page.has_selector?(:xpath, '//a[@href="https://twitter.com/share?url=http://devbestof.azcentral.com/winners/2014/14744893/&amp;text=azcentral\'s%20BEST%202014%20recognizes%20Best%20kids%20activity"]')
  sleep 4
end
Then(/^the href should contain the correct URL for sharing via GooglePlus$/) do
  page.has_selector?(:xpath, '//a[@href="https://plus.google.com/share?url=http://devbestof.azcentral.com/winners/2014/14744893/best-kids-activity-childrens-museum-of-phoenix"]')
  sleep 4
end
And(/^the href should contain the correct mailto for sharing via E-mail$/) do
  page.has_selector?(:xpath, '//a[@href="mailto:?subject=azcentral\'s%20BEST%202014%20awards%20Best%20kids%20activity&amp;body=azcentral\'s%20BEST%202014%20picked%20Children\'s%20Museum%20of%20Phoenix%20for%20the%20Best%20kids%20activity%20Check%20it%20out%3A%20%20http%3A%2F%2Fdevbestof.azcentral.com%2Fwinners%2F2014%2F14744893%2Fbest-kids-activity-childrens-museum-of-phoenix"]')
  sleep 4
end


# 5) Map / Zoom buttons test
Given(/^I am on this page: "(.*?)" where this is both a map and video$/) do |url|
  visit url
  sleep 4
end
When(/^I click on the "(.*?)" button on the main image$/) do |map|
  page.find('a.map', :text => map).click
  sleep 4
end
Then(/^I should see the div that holds the 'Zoom in' and 'Zoom out' buttons on the right side of the map at these coordinates: 'position: absolute', 'right: (\d+)px', 'top: (\d+)px', and have 'margin: (\d+)px' \- therefore they are NOT at the same location as the media buttons$/) do |arg1, arg2, arg3|
  page.has_text?('<div class="gmnoprint" draggable="false" controlwidth="20" controlheight="39" style="margin: 5px; -webkit-user-select: none; position: absolute; right: 20px; top: 0px;">')
  sleep 4
end
Then(/^I should see in the chinchilla css file that div that holds the media buttons on the left side of the map are at these coordinates, 'position: absolute', top: (\d+)', and 'left: (\d+), \- therefore they are NOT at the same location as the map zoom in & out buttons$/) do |arg1, arg2|
  visit "http://assets.azcentral.com/bestOf/_global/chinchilla-desktop.css"
  sleep 4
  page.has_text?(".photo-containment-div .media-switcher {
      position: absolute;
      top: 0;
      left: 0;
      width: 45px;
      height: auto;
      background: url('../_global/bg-overlay.png');
      z-index: 5;
  }")
  sleep 4
end


# 6) PNJ has a single internal content type test
Given(/^I am on "(.*?)"$/) do |url|
  visit url
  sleep 4
end
When(/^I click on the "(.*?)" link$/) do |link|
  page.find('a.omni-link-js', :text => link).click
  sleep 4
end
Then(/^I should be on "(.*?)" and I should NOT see the 'Readers' Choice' button on the left\-side of the page$/) do |arg1|
  page.current_path == arg1
  page.should have_no_content('<ul class="type-links">')
  sleep 4  
end


# 7) Azcentral has two internal content types test
Given(/^I am now on "(.*?)"$/) do |url2|
  visit url2
  sleep 4
end
When(/^I then click on the "(.*?)" link$/) do |link2|
  page.find('a.omni-link-js', :text => link2).click
  sleep 4
end
Then(/^I should be on "(.*?)" and I SHOULD see 'Readers' Choice' and 'Critics' Picks' links on the left\-side of the page$/) do |arg1|
  page.current_path == arg1
  sleep 4
  page.has_text?('<ul class="type-links">
    <li> <a href="/winners/2014/results?types=critics\' picks" class="omni-link-js" data-omniprop41="click-menu-item">Critics\' Picks</a></li>
    <li> <a href="http://arizonarepublic.secondstreetapp.com/l/Arizona-Republics-Voters-Choice" class="omni-link-js" data-omniprop41="click-menu-item">Readers\' Choice</a></li>
  </ul>')
  sleep 4
end


# 8) ALL Login tests
# Given(/^I am on "(.*?)"$/) do |url|

When(/^I click the "(.*?)" button$/) do |login|
  page.find('a', :text => login).click
  sleep 4
end
Then(/^I should arrive at the login url of: "(.*?)"$/) do |loginurl|
  page.current_path == loginurl
  sleep 25
end
And(/^I log into my account$/) do
  fill_in('username', :with => 'pni\dolezat')
  fill_in('password', :with => 'Fandango90')
  first(:xpath, '//button[@type="submit"]').click
  sleep 4
end
Then(/^I should be returned to this page "(.*?)"$/) do |url|
  page.current_path == url
  sleep 4
end
And(/^when I click on "(.*?)"$/) do |account|
  click_link(account)
  #<a href="https://account.azcentral.com">MY ACCOUNT</a>
  sleep 4
end
Then(/^I should arrive at the 'My Account' page$/) do
  page.current_path == "https://account.azcentral.com/"
  sleep 4
end



# 9) Login test on PNJ
Given(/^I am on the PNJ site of "(.*?)"$/) do |url|
  visit url
  sleep 4
end
Then(/^there should be no 'login' button$/) do
  page.should have_no_content('login')
  sleep 4
end




#10) Testing Email Feature
#Given(/^I am on "(.*?)"$/) do |url|
#  visit url
#end
#When(/^I click on the "(.*?)" link$/) do |link|
#  click_link(link)
#end
Then(/^I also click on the "(.*?)" link$/) do |link|
  click_link(link)
  sleep 4
end
Then(/^I should see the "(.*?)" email link contain the correct 'mailto' information$/) do |link|
  click_link(link)
  sleep 4
  page.has_selector?(:xpath, './/a[@href="mailto:?subject=azcentral\'s%20BEST%202014%20awards%20Best%20film%20festival&amp;body=azcentral\'s%20BEST%202014%20picked%20Phoenix%20Film%20Festival%20for%20the%20Best%20film%20festival.%0A%0ACheck%20it%20out%3A%20%20http%3A%2F%2Fdevbestof.azcentral.com%2Fwinners%2F2014%2F14744891%2Fbest-film-festival-phoenix-film-festival"]')
  sleep 4
end


#11) Testing "RED ALERT" Feature
Then(/^I click on the 'Next Article' arrow five times$/) do
  #expect(page).to have_selector(css, visible: true)
  page.find("a.article-nav-right").click
  sleep 4
  page.find("a.article-nav-right").click
  sleep 4
  page.find("a.article-nav-right").click
  sleep 4
  page.find("a.article-nav-right").click
  sleep 4
  page.find("a.article-nav-right").click
  sleep 4
end
Then(/^I should see the text "(.*?)"$/) do |text|
  page.has_text?(text)
  sleep 4
end



#12) Testing "RED ALERT" Feature
#Given(/^I am on the Azcentral's Best page at: "(.*?)"$/) do |url|
#  visit url
#end

Then(/^the 'last known location' should include the correct lattidue and longitude$/) do
  sleep 25
  @loc = page.execute_script("return window.localStorage.bo_lastLocation")
  expect(@loc).to include ('-112.1317')
  expect(@loc).to include ('33.5592')
end

