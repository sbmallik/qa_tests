# 67th
Given(/^this is the sixty-seventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text11, text12|
  visit url
  sleep 2
    find_link(text11).click
    page.should have_selector 'div.bubble', :text => text12, :count => 1
end

# 68th
Given(/^this is the sixty-eighth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text21, text22|
  visit url
  sleep 2
    find_link(text21).click
    page.should have_selector 'div.bubble', :text => text22, :count => 1
end

# 69th
Given(/^this is the sixty-ninth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text31, text32|
  visit url
  sleep 2
    find_link(text31).click
    page.should have_selector 'div.bubble', :text => text32, :count => 1
end

# 70th
Given(/^this is the seventieth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text41, text42|
  visit url
  sleep 2
    find_link(text41).click
    page.should have_selector 'div.bubble', :text => text42, :count => 1
end

# 71st
Given(/^this is the seventy-first test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text51, text52|
  visit url
  sleep 2
    within(:css, 'div.story-ribbon-content') { find_link(text51).click }
    page.should have_selector 'span.comic-name', :text => text52, :count => 1
end

# 72nd
Given(/^this is the seventy-second test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text61, text62|
 visit url
 sleep 2
   find_link(text61).click
    page.should have_selector 'div.bubble', :text => text62, :count => 1
end

# 76rd
Given(/^this is the seventy-third test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text71, text72|
 visit url
 sleep 2
   find_link(text71).click
    page.should have_selector 'div.bubble', :text => text72, :count => 1
end

# 74th
Given(/^this is the seventy-fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text81, text82|
 visit url
 sleep 2
    find_link(text81).click
    page.should have_selector 'div.bubble', :text => text82, :count => 1
end

# 75th
Given(/^this is the seventy-fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text91, text92|
 visit url
 sleep 2
    within(:css, 'div.story-ribbon-content') { find_link(text91).click }
    page.should have_selector 'span.comic-name', :text => text92, :count => 1
end

# 76th
Given(/^this is the seventy-sixth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text101, text102|
 visit url
 sleep 2
    within(:css, 'div.story-ribbon-content') { find_link(text101).click }
    page.should have_selector 'span.comic-name', :text => text102, :count => 1
end

# 77th
Given(/^this is the seventy-seventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text111, text112|
 visit url
 sleep 2
   find_link(text111).click
    page.should have_selector 'div.bubble', :text => text112, :count => 1
end

# 78th
Given(/^this is the seventy-eighth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text121, text122|
 visit url
 sleep 2
    within(:css, 'div.story-ribbon-content') { find_link(text121).click }
    page.should have_selector 'span.comic-name', :text => text122, :count => 1
end

# 79th
Given(/^this is the seventy-ninth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text131, text132|
 visit url
 sleep 2
   find_link(text131).click
    page.should have_selector 'div.bubble', :text => text132, :count => 1
end

# 80th
Given(/^this is the eightieth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text141, text142|
 visit url
 sleep 2
   find_link(text141).click
    page.should have_selector 'div.bubble', :text => text142, :count => 1
end

# 81st
Given(/^this is the eighty-first test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text151, text152|
 visit url
 sleep 2
    within(:css, 'div.story-ribbon-content') { find_link(text151).click }
    page.should have_selector 'span.comic-name', :text => text152, :count => 1
end

# 82nd
Given(/^this is the eighty-second test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text161, text162|
 visit url
 sleep 2
    find_link(text161).click
    page.should have_selector 'div.bubble', :text => text162, :count => 1
end

# 83rd
Given(/^this is the eighty-third test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text171, text172|
 visit url
    find_link(text171).click
    page.should have_selector 'div.bubble', :text => text172, :count => 1
end

# 84th
Given(/^this is the eighty-fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text181, text182|
 visit url
 sleep 2
   find_link(text181).click
    page.should have_selector 'div.bubble', :text => text182, :count => 1
end

# 85th
Given(/^this is the eighty-fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text191, text192|
 visit url
 sleep 2
   find_link(text191).click
    page.should have_selector 'div.bubble', :text => text192, :count => 1
end

# 86th
Given(/^this is the eighty-sixth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text201, text202|
 visit url
 sleep 2
    find_link(text201).click
    page.should have_selector 'div.bubble', :text => text202, :count => 1
end

# 87th
Given(/^this is the eighty-seventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text211, text212|
 visit url
 sleep 2
    find_link(text211).click
    page.should have_selector 'div.bubble', :text => text212, :count => 1
end

# 88th
Given(/^this is the eighty-eighth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text221, text222|
 visit url
 sleep 2
    within(:css, 'div.story-ribbon-content') { find_link(text221).click }
    page.should have_selector 'div.comic-display-name', :text => text222, :count => 1
end

# 89th
Given(/^this is the eighty-ninth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text231, text232|
  visit url
  sleep 2
    find_link(text231).click
    page.should have_selector 'div.bubble', :text => text232, :count => 1
end

# 90th
Given(/^this is the nintieth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text241, text242|
 visit url
 sleep 2
   find_link(text241).click
    page.should have_selector 'div.bubble', :text => text242, :count => 1
end

# 91st
Given(/^this is the ninty-first test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text251, text252|
 visit url
 sleep 2
   find_link(text251).click
    page.should have_selector 'div.bubble', :text => text252, :count => 1
end

# 92nd
Given(/^this is the ninty-second test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text261, text262|
 visit url
 sleep 2
    within(:css, 'div.story-ribbon-content') { find_link(text261).click }
    page.should have_selector 'span.comic-name', :text => text262, :count => 1
end

# 93rd
Given(/^this is the ninty-third test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text271, text272|
 visit url
 sleep 2
   find_link(text271).click
    page.should have_selector 'div.bubble', :text => text272, :count => 1
end

# 94th
Given(/^this is the ninty-fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text281, text282|
 visit url
 sleep 2
   find_link(text281).click
    page.should have_selector 'div.bubble', :text => text282, :count => 1
end

# 95th
Given(/^this is the ninty-fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text291, text292|
  visit url
  sleep 2
    find_link(text291).click
    page.should have_selector 'div.bubble', :text => text292, :count => 1
end

# 96th
Given(/^this is the ninty-sixth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text601, text602|
 visit url
 sleep 2
    find_link(text601).click
    page.should have_selector 'div.bubble', :text => text602, :count => 1
end