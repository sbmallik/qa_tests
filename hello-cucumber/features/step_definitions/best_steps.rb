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
  expect(page).to have_css('h1', text: 'Vote Now!')
end

Then(/^I should see valid h2 text$/) do
  expect(page).to have_css('h2', text: '10/1-18')
end

Then(/^I should see valid header paragraph text$/) do
  expect(page).to have_css('p', text: 'Vote now for your favorite local Rochester businesses! Your vote counts! By submitting your Rochester’s Choice Ballot, you could WIN $1000! One qualified ballot will be randomly selected to win the prize.')
end

Then(/^I should see a contest rules button$/) do
  expect(page).to have_link('Contest Rules')
end

Then(/^clicking it should go to http:\/\/democratandchronicle\.secondstreetapp\.com\/l\/Rochester\-Democrat\-and\-Chronicles\-Voters\-Choice\/Rules$/) do
  click_link('Contest Rules')
  time = Time.now.to_s
  expect(current_path).to eq('/l/Rochester-Democrat-and-Chronicles-Voters-Choice/Rules')
  page.save_screenshot("./screenshots/best_contest-rules_screenshot-" + time +".jpg", :full => true)
end