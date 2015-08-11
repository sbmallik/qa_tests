# 1st
Given(/^this is the first test on the Comics homepage at "(.*?)" and I navigate to the 'Nine to Five' comics page, then I should see the header "(.*?)" on the page$/) do |url, text|
  visit url
    find_link('9 to 5').click
    page.should have_selector 'div.bubble', :text => text, :count => 1
end

# 2nd
Given(/^this is the second test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text1, text2|
  visit url
    find_link(text1).click
    page.should have_selector 'span.comic-name', :text => text2, :count => 1
end

# 3rd
Given(/^this is the third test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, tex3, text3|
  visit url
    find_link(text3).click
    page.should have_selector 'div.bubble', :text => text3, :count => 1
end

# 4th
Given(/^this is the fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, tex4, text4|
  visit url
    find_link(text4).click
    page.should have_selector 'div.bubble', :text => text4, :count => 1
end

# 5th
Given(/^this is the fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, tex5, text5|
  visit url
    find_link(text5).click
    page.should have_selector 'div.bubble', :text => text5, :count => 1
end

# 6th
Given(/^this is the sixth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, tex6, text6|
 visit url
   find_link(text6).click
    page.should have_selector 'span.comic-name', :text => text6, :count => 1
end

# 7th
Given(/^this is the seventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, tex7, text7|
 visit url
   find_link(text7).click
    page.should have_selector 'div.bubble', :text => text7, :count => 1
end

# 8th
Given(/^this is the eighth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, tex8, text8|
 visit url
   find_link(text8).click
    page.should have_selector 'div.bubble', :text => text8, :count => 1
end

# 9th
Given(/^this is the ninth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, tex9, text9|
 visit url
   find_link(text9).click
    page.should have_selector 'div.bubble', :text => text9, :count => 1
end

# 10th
Given(/^this is the tenth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text101, text102|
 visit url
   find_link(text101).click
    page.should have_selector 'div.bubble', :text => text102, :count => 1
end

# 11th
Given(/^this is the eleventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text111, text112|
 visit url
  within(:css, 'div.story-ribbon-content') { find_link(text111).click }
    page.should have_selector 'span.comic-name', :text => text112, :count => 1
end

# 12th
Given(/^this is the twelfth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text121, text122|
 visit url
   find_link(text121).click
    page.should have_selector 'div.bubble', :text => text122, :count => 1
end

# 13th
Given(/^this is the thirteenth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text131, text132|
 visit url
   find_link(text131).click
    page.should have_selector 'div.bubble', :text => text132, :count => 1
end

# 14th
Given(/^this is the fourteenth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text141, text142|
 visit url
   find_link(text141).click
    page.should have_selector 'div.bubble', :text => text142, :count => 1
end

# 15th
Given(/^this is the fifteenth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text151, text152|
 visit url
   find_link(text151).click
    page.should have_selector 'div.bubble', :text => text152, :count => 1
end

# 16th
Given(/^this is the sixteenth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text161, text162|
 visit url
   find_link(text161).click
    page.should have_selector 'span.comic-name', :text => text162, :count => 1
end

# 17th
Given(/^this is the seventeenth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text171, text172|
 visit url
    find_link(text171).click
    page.should have_selector 'div.bubble', :text => text172, :count => 1
end

# 18th
Given(/^this is the eighteenth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text181, text182|
 visit url
   find_link(text181).click
    page.should have_selector 'div.bubble', :text => text182, :count => 1
end

# 19th
Given(/^this is the nineteenth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text191, text192|
 visit url
   find_link(text191).click
    page.should have_selector 'div.bubble', :text => text192, :count => 1
end

# 20th
Given(/^this is the twentieth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text201, text202|
 visit url
    find_link(text201).click
    page.should have_selector 'div.bubble', :text => text202, :count => 1
end

# 21st
Given(/^this is the twenty-first test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text211, text212|
 visit url
   find_link(text211).click
    page.should have_selector 'div.bubble', :text => text212, :count => 1
end

# 22nd
Given(/^this is the twenty-second test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text221, text222|
 visit url
   find_link(text221).click
    page.should have_selector 'span.comic-name', :text => text222, :count => 1
end

# 23rd
Given(/^this is the twenty-third test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text231, text232|
  visit url
    find_link(text231).click
    page.should have_selector 'div.bubble', :text => text232, :count => 1
end

# 24th
Given(/^this is the twenty-fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text241, text242|
 visit url
   find_link(text241).click
    page.should have_selector 'div.bubble', :text => text242, :count => 1
end

# 25th
Given(/^this is the twenty-fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text251, text252|
 visit url
   find_link(text251).click
    page.should have_selector 'div.bubble', :text => text252, :count => 1
end

# 26th
Given(/^this is the twenty-sixth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text261, text262|
 visit url
  find_link(text261).click
    page.should have_selector 'div.bubble', :text => text262, :count => 1
end

# 27th
Given(/^this is the twenty-seventh test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text271, text272|
 visit url
   find_link(text271).click
    page.should have_selector 'div.bubble', :text => text272, :count => 1
end

# 28th
Given(/^this is the twenty-eighth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text281, text282|
 visit url
   find_link(text281).click
    page.should have_selector 'div.bubble', :text => text282, :count => 1
end

# 29th
Given(/^this is the twenty-ninth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text291, text292|
 visit url
   within(:css, 'div.story-ribbon-content') { find_link(text291).click }
    page.should have_selector 'span.comic-name', :text => text292, :count => 1
end

# 30th
Given(/^this is the thirtieth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text301, text302|
 visit url
   find_link(text301).click
    page.should have_selector 'div.bubble', :text => text302, :count => 1
end

# 31st
Given(/^this is the thirty-first test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text311, text312|
 visit url
   find_link(text311).click
    page.should have_selector 'div.bubble', :text => text312, :count => 1
end

# 32nd
Given(/^this is the thirty-second test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text321, text322|
 visit url
   find_link(text321).click
    page.should have_selector 'div.bubble', :text => text322, :count => 1
end

# 33rd
Given(/^this is the thirty-third test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text331, text332|
 visit url
   find_link(text331).click
    page.should have_selector 'div.bubble', :text => text332, :count => 1
end

# 34th
Given(/^this is the thirty-fourth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text341, text342|
 visit url
   find_link(text341).click
    page.should have_selector 'div.bubble', :text => text342, :count => 1
end

# 35th
Given(/^this is the thirty-fifth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the header "(.*?)" on the page$/) do |url, text351, text352|
 visit url
   find_link(text351).click
    page.should have_selector 'div.bubble', :text => text352, :count => 1
end

# 36th
Given(/^this is the thirty-sixth test on the Comics homepage at "(.*?)" and I navigate to the "(.*?)" comics page, then I should see the title "(.*?)" on the page$/) do |url, text361, text362|
 visit url
   within(:css, 'div.story-ribbon-content') { find_link(text361).click }
    page.should have_selector 'span.comic-name', :text => text362, :count => 1
end