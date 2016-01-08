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
