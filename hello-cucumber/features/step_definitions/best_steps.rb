Given /^that I am a visitor to the Rochester Choice Awards site$/ do

end

When(/^I visit http:\/\/democratandchronicle\.secondstreetapp\.com\/l\/Rochester\-Democrat\-and\-Chronicles\-Voters\-Choice$/) do
	visit 'http://democratandchronicle.secondstreetapp.com/l/Rochester-Democrat-and-Chronicles-Voters-Choice' #gotta visit the page to set the content value
	time = Time.now.to_s
	page.save_screenshot("./screenshots/best_steps_screenshot-" + time +".jpg", :full => true)
end

Then /^I should see a cobrand header$/ do
	expect(page).to have_css("iframe[src*='http://www.democratandchronicle.com/services/cobrand/header']")
end

Then(/^I should see Nominate Now! in the header$/) do
  expect(page).to have_css('h1', text: 'Nominate Now!')
end

Then(/^I should see valid h2 text$/) do
  expect(page).to have_css('h2', text: '10/1/15')
end

Then(/^I should see valid header paragraph text$/) do
  expect(page).to have_css('p', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam eu lectus vestibulum, vehicula mi nec, elementum ante. Pellentesque posuere eros vitae vulputate sagittis. Donec suscipit at turpis condimentum convallis. Ut tincidunt tempus sollicitudin. Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
end