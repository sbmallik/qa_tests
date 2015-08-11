# 1) Search Term Test
Given(/^I am on the 'Critics Picks' Azcentral's Best page at: "(.*?)"$/) do |url|
  visit url
end
When(/^I enter the term 'kids' in the search box$/) do
    find("input#search").set("kids" + "\n")
end
Then(/^I see a resulting (\d+) pertinent articles$/) do |arg1|
  within(".results"){
  	page.assert_selector('li.award', :count => arg1)
  }
end
Then(/^I am on this URL: "(.*?)"$/) do |link1|
  page.current_path == link1
end

# 2) Filtering Content test
Given(/^I am on the resulting URL of the last 'Search Term' test at: "(.*?)"$/) do |url2|
  visit url2
end
When(/^I click on the word 'Categories' then click on 'Arts & Entertainment'$/) do
  page.find('a.filter-heading', :text => 'Categories').trigger("click")
  page.find('li.filterby-js', :text => 'ARTS & ENTERTAINMENT').trigger("click")
  #find("a.submit").trigger("click")
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
  page.find('a.filter-heading', :text => 'Sort Type').trigger("click")
  page.find('li.sortby-js', :match => :first).trigger("click") 
end
Then(/^the URL will change to this: "(.*?)"$/) do |link3|
  page.current_path == link3
end

# 4) More winners near me test
Given(/^I am on an article page$/) do
  visit "http://best-azcentral.azcentral.com/winners/2014/14744893/best-kids-activity-childrens-museum-of-phoenix"
end
When(/^I want to make sure there are articles in the "More Winners Near Me" section$/) do
    page.find('p.near-me', :text => 'More Winners Near Me')
    #page.find('a.location', :text => 'Map').trigger("click")
end
Then(/^I will see a resulting (\d+) pertinent articles$/) do |links|
  within("#winners-near-me"){
    page.assert_selector('li.award', :count => links)
  }
end

=begin
# 4) Article/Map test
Given(/^I am on an article page$/) do
  visit "http://best-azcentral.azcentral.com/winners/2014/14744893/best-kids-activity-childrens-museum-of-phoenix"
end
When(/^I click on the word 'Map' below the article image$/) do
      page.find('a.location', :text => 'Map').trigger("click")
end
Then(/^the image will change to a Google map of the business location$/) do
  page.has_selector?("img[src$='https://maps.googleapis.com/maps/api/js/']")
  sleep 1
end
=end
=begin
Then(/^take a snapshot(| and show me the page)$/) do |show_me|
  page.driver.render Rails.root.join("tmp/capybara/#{Time.now.strftime('%Y-%m-%d-%H-%M-%S')}.png")
  Then %{show me the page} if show_me.present?
end
=end