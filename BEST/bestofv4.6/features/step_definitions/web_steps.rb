#1) 
Given(/^I am on "(.*?)"$/) do |url|
  visit url
end

When(/^I click on the "(.*?)" link$/) do |link|
  click_link(link)
end

Then(/^I also click on the "(.*?)" link$/) do |link|
  click_link(link)
end

Then(/^I should see the "(.*?)" email link contain the correct 'mailto' information$/) do |link|
  click_link(link)
  page.has_selector?(:xpath, './/a[@href="mailto:?subject=azcentral\'s%20BEST%202014%20awards%20Best%20film%20festival&amp;body=azcentral\'s%20BEST%202014%20picked%20Phoenix%20Film%20Festival%20for%20the%20Best%20film%20festival.%0A%0ACheck%20it%20out%3A%20%20http%3A%2F%2Fdevbestof.azcentral.com%2Fwinners%2F2014%2F14744891%2Fbest-film-festival-phoenix-film-festival"]')
end

#< a href= "mailto:<%= @email %>?subject=Answer to complaint&body=<%= @salutation %>,">Answer< /a>
 # mailto_link = '//a[@href="mailto:' + table.rows_hash['recipient'] + '?subject=' + table.rows_hash['subject'] + '&body=' + table.rows_hash['body'] + ' "]'
 # page.should have_xpath(mailto_link)


Then(/^I click on the 'Next Article' arrow five times$/) do
  #expect(page).to have_selector(css, visible: true)
  page.find("a.article-nav-right").click
  sleep 2
  page.find("a.article-nav-right").click
  sleep 2
  page.find("a.article-nav-right").click
  sleep 2
  page.find("a.article-nav-right").click
  sleep 2
  page.find("a.article-nav-right").click
  sleep 4
end

Then(/^I should see the text "(.*?)"$/) do |text|
  page.has_text?(text)
  sleep 4
end



=begin
      <a href="/winners/2014/results?types=critics' picks" class="omni-link-js" data-omniprop41="click-menu-item">Critics' Picks</a>
      <p class="preview-title"><span>Best film festival</span></p>
<li class="email">
  <a id="article-email-sharing" class="omni-event-js share-article-via-email share-link" data-omniaction="share-email" data-omniprop42="share-article-via-email" href="mailto:?subject=azcentral's%20BEST%202014%20awards%20Best%20film%20festival&amp;body=azcentral's%20BEST%202014%20picked%20Phoenix%20Film%20Festival%20for%20the%20Best%20film%20festival.%0A%0ACheck%20it%20out%3A%20%20http%3A%2F%2Fdevbestof.azcentral.com%2Fwinners%2F2014%2F14744891%2Fbest-film-festival-phoenix-film-festival">
  <img src="http://assets.azcentral.com/bestOf/_global/b-article-share-email.png"><span>Send</span></a>
</li>





      http://devbestof.azcentral.com/winners/2014/
      <a href="/winners/2014/results?types=critics' picks" class="omni-link-js" data-omniprop41="click-menu-item">Critics' Picks</a>
      <p class="preview-title"><span>Best film festival</span></p>
    <a href="/winners/2014/14744892/best-home-tour-modern-phoenix" class="article-nav-right omni-link-js" data-omniaction="link" ,="" data-omniprop41="click-pagenavright"></a>

    <div id="article-meter" class="article-meter article-meter-alert"><span class="article-meter-count article-meter-count-bold">5</span><span class="article-meter-text"> free articles left</span></div>






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

=end