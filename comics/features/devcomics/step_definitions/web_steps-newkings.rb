# Non-Kings

Given(/^I open the Comics homepage at "(.*?)"$/) do |url|
 visit url
end

When(/^I navigate to each "(.*?)"$/) do |comic|
	find_link("#{comic}").click
end

Then(/^I should see the "(.*?)"$/) do |title|
	expect(page).to have_selector('span.comic-name', :text => "#{title}", :count => 1)
end


#Then "I should see the following transaction history:" do |table|
 # table.raw.each do |comic, title|
  #  page.should have_css("tr.#{comic}.#{title}")
  #end
#end
