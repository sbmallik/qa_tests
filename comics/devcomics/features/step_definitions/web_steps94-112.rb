# 94th
Given(/^this is the ninty-fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text11, text12|
  visit url
    find_link(text11).click
    page.should have_selector 'div.bubble', :text => text12, :count => 1
end

# 95th
Given(/^this is the ninty-fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text21, text22|
  visit url
    find_link(text21).click
    page.should have_selector 'div.bubble', :text => text22, :count => 1
end

# 96th
Given(/^this is the ninty-sixth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text31, text32|
  visit url
    find_link(text31).click
    page.should have_selector 'div.bubble', :text => text32, :count => 1
end

# 97th
Given(/^this is the ninty-seventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text41, text42|
  visit url
    within(:css, 'div.story-ribbon-content') { find_link(text41).click }
    page.should have_selector 'span.comic-name', :text => text42, :count => 1
end

# 98th
Given(/^this is the ninty-eighth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text51, text52|
  visit url
   find_link(text51).click
    page.should have_selector 'div.bubble', :text => text52, :count => 1
end

# 99th
Given(/^this is the ninty-ninth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text61, text62|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text61).click }
    page.should have_selector 'span.comic-name', :text => text62, :count => 1
end


# 100th
Given(/^this is the one-hundredth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text71, text72|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text71).click }
    page.should have_selector 'span.comic-name', :text => text72, :count => 1
end

# 101st
Given(/^this is the one-hundred-first test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text81, text82|
 visit url
   find_link(text81).click
    page.should have_selector 'div.bubble', :text => text82, :count => 1
end

# 102nd
Given(/^this is the one-hundred-second test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text91, text92|
  visit url
    within(:css, 'div.story-ribbon-content') { find_link(text91).click }
    page.should have_selector 'span.comic-name', :text => text92, :count => 1
end

# 103rd
Given(/^this is the one-hundred-third test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text101, text102|
 visit url
    find_link(text101).click
    page.should have_selector 'div.bubble', :text => text102, :count => 1
end


# 104th
Given(/^this is the one-hundred-fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text111, text112|
 visit url
   find_link(text111).click
    page.should have_selector 'div.bubble', :text => text112, :count => 1
end

# 105th
Given(/^this is the one-hundred-fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text121, text122|
 visit url
   find_link(text121).click
    page.should have_selector 'div.bubble', :text => text122, :count => 1
end

# 106th
Given(/^this is the one-hundred-sixth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text131, text132|
  visit url
    within(:css, 'div.story-ribbon-content') { find_link(text131).click }
    page.should have_selector 'span.comic-name', :text => text132, :count => 1
end

# 107th
Given(/^this is the one-hundred-seventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text141, text142|
 visit url
    find_link(text141).click
    page.should have_selector 'div.bubble', :text => text142, :count => 1
end


# 108th
Given(/^this is the one-hundred-eighth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text151, text152|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text151).click }
    page.should have_selector 'span.comic-name', :text => text152, :count => 1
end

# 109th
Given(/^this is the one-hundred-ninth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text191, text192|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text191).click }
    page.should have_selector 'span.comic-name', :text => text192, :count => 1
end

# 110th
Given(/^this is the one-hundred-tenth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text201, text202|
  visit url
    within(:css, 'div.story-ribbon-content') { find_link(text201).click }
    page.should have_selector 'span.comic-name', :text => text202, :count => 1
end

# 111th
Given(/^this is the one-hundred-eleventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text211, text212|
 visit url
    find_link(text211).click
    page.should have_selector 'div.bubble', :text => text212, :count => 1
end

# 112th
Given(/^this is the one-hundred-twelfth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text221, text222|
 visit url
    find_link(text221).click
    page.should have_selector 'div.bubble', :text => text222, :count => 1
end

