Given(/^I am on the BESTOF home page at "(.*?)"$/) do |url1|
  visit url1
end

Then(/^I should clear the localStorage$/) do
  page.execute_script("window.localStorage.clear()")
end

Then(/^I will verifiy that localStorage is empty$/) do
  page.execute_script("window.localStorage.length == undefined")
end

Then(/^the page should reload$/) do
	page.driver.execute_script("history.go(0)");
end

Then(/^I will verify that the localStorage is NOT empty anymore$/) do
	page.execute_script("window.localStorage.length !== undefined")
end