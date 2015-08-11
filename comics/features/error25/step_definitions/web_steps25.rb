Given(/^I am the first test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  #<a href="/slideshow?comic=dt"><img class="comic-display" src="http://assets.amuniversal.com/16a04060d5650132dfb9005056a9545d"></a>

  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the second test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the third test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  #page.find('img.comic-display', :match => :first).click 
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the fourth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the fifth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end


Given(/^I am the sixth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the seventh test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the eighth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the nineth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the tenth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end


Given(/^I am the eleventh test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the twelfth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the thirteenth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the fourteenth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the fifteenth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end


Given(/^I am the sixteenth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the seventeenth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the eighteenth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the nineteenth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the twentieth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end


Given(/^I am the twenty-first test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the twenty-second test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the twenty-third test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the twenty-fourth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end

Given(/^I am the twenty-fifth test on the Comics home page at "(.*?)" and I navigate to the Dilbert comics page, then I should see "(.*?)" on the page$/) do |url, text|
  visit url
  page.find(:xpath, '//a[@href="/slideshow?comic=dt"]', :match => :first).click
  page.should have_selector 'div.bubble', :text => text, :count => 1
end


	#visit current_path
	#refresh_page
	#page.find('img.comic-display', :match => :first).trigger("click") 
#<a href="/slideshow?comic=dt"><img class="comic-display" src="http://assets.amuniversal.com/33ee0a80c9c40132db02005056a9545d"></a>