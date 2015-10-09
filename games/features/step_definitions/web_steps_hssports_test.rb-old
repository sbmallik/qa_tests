Given(/^I visit "(.*?)" url$/) do |url|
  visit ui_url(url)
  wait_for_pageload
  @css_scope = first(".polldaddy-poll-primary")
end

When(/^I press the "(.*?)" class div$/) do |css|
  @css_scope.first(css).click()
end

Then(/^I should be shown the "(.*?)" class div$/) do |css|
  expect(page).to have_selector(css, visible: true)
end

Then(/^I should be taken to "(.*?)"$/) do |location|
  expect(URI.parse(current_url).path).to eq(URI.parse(location).path)
end

Given(/^The localstorage key "(.*?)" is set$/) do |localstorage_name|
  driver = Capybara.current_session.driver
    name = String driver.execute_script("return localStorage.getItem('"+localstorage_name+"')")
    expect(name.empty?).to eq(false)
end

Given(/^generate local cache$/) do
  visit ui_url("/module-showcase/polldaddy-poll/")
  @css_scope = first(".polldaddy-poll-primary")
  @css_scope.first(".pmp-answer-option").click()
  expect(page).to have_selector(".poll-answer-wrapper", visible: true)
end



@selenium @polls
Feature: Build a section front module for polls
    In order to display polls on fronts

Scenario: Show the appropriate poll results for a given poll when View Results is clicked
    Given I visit "/module-showcase/polldaddy-poll/" url
    When I press the ".pmp-view-results" class div
    Then I should be shown the ".poll-answer-wrapper" class div

Scenario: Show the poll list when I click 'See All Polls'
    Given I visit "/module-showcase/polldaddy-poll/" url
    When I press the ".pmp-see-all-polls" class div
    Then I should be taken to "/polls/all/"

Scenario: Show the appropriate poll results after a vote is submitted
    Given I visit "/module-showcase/polldaddy-poll/" url
    When I press the ".pmp-answer-option" class div
    Then I should be shown the ".poll-answer-wrapper" class div