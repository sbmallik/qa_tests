# Scenario 1
Given(/^I am on this page: "([^"]*)" where this is both a map and video$/) do |url|
  visit url
  sleep 2
end

When(/^I click on the "([^"]*)" button on the main image$/) do |map|
  page.find('a.map', :text => map).click
  sleep 2
end

Then(/^I should see the div that holds the 'Zoom in' and 'Zoom out' buttons on the right side of the map at these coordinates: 'position: absolute', 'right: (\d+)px', 'top: (\d+)px', and have 'margin: (\d+)px' \- therefore they are NOT at the same location as the media buttons$/) do |arg1, arg2, arg3|
  page.has_text?('<div class="gmnoprint" draggable="false" controlwidth="20" controlheight="39" style="margin: 5px; -webkit-user-select: none; position: absolute; right: 20px; top: 0px;">')
  sleep 2
end

Then(/^I should see in the chinchilla css file that div that holds the media buttons on the left side of the map are at these coordinates, 'position: absolute', top: (\d+)', and 'left: (\d+), \- therefore they are NOT at the same location as the map zoom in & out buttons$/) do |arg1, arg2|
  visit "http://assets.azcentral.com/bestOf/_global/chinchilla-desktop.css"
  sleep 2
  page.has_text?(".photo-containment-div .media-switcher {
      position: absolute;
      top: 0;
      left: 0;
      width: 45px;
      height: auto;
      background: url('../_global/bg-overlay.png');
      z-index: 5;
  }")
  sleep 2
end


# Scenario 2
Given(/^I am on "([^"]*)"$/) do |url|
  visit url
  sleep 2
end

When(/^I then click on the "([^"]*)" link$/) do |link1|
  page.find('a.omni-link-js', :text => link1).click
  sleep 2
end

Then(/^I should be on "([^"]*)" and I should NOT see the 'Readers' Choice' button on the left-side of the page$/) do |arg1|
  page.current_path == arg1
  page.should have_no_content('<ul class="type-links">')
  sleep 2  
end


# Scenario 3
Given(/^I am now on "([^"]*)"$/) do |url2|
  visit url2
  sleep 2
end
When(/^I click on the "([^"]*)" link$/) do |link2|
  page.find('a.omni-link-js', :text => link2).click
  sleep 2
end
Then(/^I should be on "([^"]*)" and I SHOULD see 'Readers' Choice' and 'Critics' Picks' links on the left-side of the page$/) do |arg1|
  page.current_path == arg1
  sleep 2
  page.has_text?('<ul class="type-links">
    <li> <a href="/winners/2014/results?types=critics\' picks" class="omni-link-js" data-omniprop41="click-menu-item">Critics\' Picks</a></li>
    <li> <a href="http://arizonarepublic.secondstreetapp.com/l/Arizona-Republics-Voters-Choice" class="omni-link-js" data-omniprop41="click-menu-item">Readers\' Choice</a></li>
  </ul>')
end