# 37th
Given(/^this is the thirty-seventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text11, text12|
  visit url
    find_link(text11).click
    page.should have_selector 'div.bubble', :text => text12, :count => 1
end


# 38th
Given(/^this is the thirty-eighth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text21, text22|
  visit url
    within(:css, 'div.story-ribbon-content') { find_link(text21).click }
    page.should have_selector 'span.comic-name', :text => text22, :count => 1
end


# 39th
Given(/^this is the thirty-ninth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text31, text32|
  visit url
    find_link(text31).click
    page.should have_selector 'div.bubble', :text => text32, :count => 1
end


# 40th
Given(/^this is the fourtieth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text41, text42|
  visit url
    find_link(text41).click
    page.should have_selector 'div.bubble', :text => text42, :count => 1
end


# 41st
Given(/^this is the forty-first test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text51, text52|
  visit url
    within(:css, 'div.story-ribbon-content') { find_link(text51).click }
    page.should have_selector 'span.comic-name', :text => text52, :count => 1
end


# 42nd
Given(/^this is the forty-second test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text61, text62|
 visit url
   find_link(text61).click
    page.should have_selector 'div.bubble', :text => text62, :count => 1
end


# 43rd
Given(/^this is the forty-third test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text71, text72|
 visit url
   find_link(text71).click
    page.should have_selector 'div.bubble', :text => text72, :count => 1
end


# 44th
Given(/^this is the forty-fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text81, text82|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text81).click }
    page.should have_selector 'span.comic-name', :text => text82, :count => 1
end


# 45th
Given(/^this is the forty-fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text91, text92|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text91).click }
    page.should have_selector 'span.comic-name', :text => text92, :count => 1
end


# 46th
Given(/^this is the forty-sixth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text101, text102|
 visit url
   find_link(text101).click
    page.should have_selector 'div.bubble', :text => text102, :count => 1
end


# 47th
Given(/^this is the forty-seventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text111, text112|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text111).click }
    page.should have_selector 'span.comic-name', :text => text112, :count => 1
end


# 48th
Given(/^this is the forty-eighth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text121, text122|
 visit url
   find_link(text121).click
    page.should have_selector 'div.bubble', :text => text122, :count => 1
end


# 49th
Given(/^this is the forty-ninth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text131, text132|
 visit url
   find_link(text131).click
    page.should have_selector 'div.bubble', :text => text132, :count => 1
end


=begin
# 50th GRIN AND BEAR IT
Given(/^this is the fiftieth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text141, text142|
 visit url
   find_link(text141).click
    page.should have_selector 'div.bubble', :text => text142, :count => 1
end
=end


# 50th
Given(/^this is the fiftieth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text151, text152|
 visit url
   find_link(text151).click
    page.should have_selector 'div.bubble', :text => text152, :count => 1
end


# 51st
Given(/^this is the fifty-first test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text161, text162|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text161).click }
    page.should have_selector 'span.comic-name', :text => text162, :count => 1
end


# 52nd
Given(/^this is the fifty-second test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text171, text172|
 visit url
    find_link(text171).click
    page.should have_selector 'div.bubble', :text => text172, :count => 1
end


# 53rd
Given(/^this is the fifty-third test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text181, text182|
 visit url
   find_link(text181).click
    page.should have_selector 'div.bubble', :text => text182, :count => 1
end


# 54th
Given(/^this is the fifty-fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text191, text192|
 visit url
   find_link(text191).click
    page.should have_selector 'div.bubble', :text => text192, :count => 1
end


# 55th
Given(/^this is the fifty-fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text201, text202|
 visit url
    find_link(text201).click
    page.should have_selector 'div.bubble', :text => text202, :count => 1
end


# 56th
Given(/^this is the fifty-sixth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text211, text212|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text211).click }
    page.should have_selector 'span.comic-name', :text => text212, :count => 1
end


# 57th
Given(/^this is the fifty-seventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text221, text222|
 visit url
   find_link(text221).click
    page.should have_selector 'div.bubble', :text => text222, :count => 1
end


# 58th
Given(/^this is the fifty-eighth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text231, text232|
  visit url
    within(:css, 'div.story-ribbon-content') { find_link(text231).click }
    page.should have_selector 'span.comic-name', :text => text232, :count => 1
end


# 59th
Given(/^this is the fifty-ninth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text241, text242|
 visit url
   find_link(text241).click
    page.should have_selector 'div.bubble', :text => text242, :count => 1
end


# 60th
Given(/^this is the sixtieth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text251, text252|
 visit url
   find_link(text251).click
    page.should have_selector 'div.bubble', :text => text252, :count => 1
end


# 61st
Given(/^this is the sixty-first test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text261, text262|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text261).click }
    page.should have_selector 'span.comic-name', :text => text262, :count => 1
end


# 62nd
Given(/^this is the sixty-second test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text271, text272|
 visit url
   find_link(text271).click
    page.should have_selector 'div.bubble', :text => text272, :count => 1
end


=begin LOOSE PARTS
# 64th
Given(/^this is the sixty-fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text281, text282|
 visit url
   find_link(text281).click
    page.should have_selector 'div.bubble', :text => text282, :count => 1
end

# 65th LOVE IS...
Given(/^this is the sixty-fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text291, text292|
  visit url
    find_link(text291).click
    page.should have_selector 'div.bubble', :text => text292, :count => 1
end
=end


# 63rd
Given(/^this is the sixty-third test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text301, text302|
 visit url
    within(:css, 'div.story-ribbon-content') { find_link(text301).click }
    page.should have_selector 'span.comic-name', :text => text302, :count => 1
end