Given(/^I visit the 'The Dark' poll$/) do
  visit "http://fallsradio.com/the-dark-on-fm94/"
end

When(/^I click on the Doll Skin button over and over on the poll$/) do
  page.execute_script "window.scrollBy(0,1700)"
  choose('Mighty Sideshow-Torn in Two')
end

Then(/^the girls will win the contest$/) do
  page.execute_script "window.scrollBy(0,700)"
  page.find('a.pds-vote-button', :text => 'Vote').click
end
