Given(/^I visit the local version of the Careerbuilder form$/) do
  visit "http://localhost:8000/career-builder/contact-us/"
  sleep 2
end
When(/^I enter data in the required form fields$/) do
  fill_in('field35816815-first', :with => "Testing")
  sleep 2
  fill_in('field35816815-last', :with => "Form")
  sleep 2
  fill_in('field35816818', :with => "(602) 555-1234")
  sleep 2
  fill_in('field35816819', :with => "tdolezal@azcentral.com")
  sleep 2
  fill_in('field35817090', :with => "Testing")
  sleep 2
  fill_in('field35816816-address', :with => "123 Main St.")
  sleep 2
  fill_in('field35816816-city', :with => "Phoenix")
  sleep 2
  select("Arizona", :from => 'field35816816-state')
  sleep 2
  fill_in('field35816816-zip', :with => "85020")
  sleep 2
  check("Online Job Postings")
  sleep 2
  fill_in('field35816820', :with => "Testing form")
  sleep 2
end
And(/^I click the "(.*?)" button$/) do |arg1|
  click_button(arg1)
  sleep 2
end
Then(/^the page will display "(.*?)"$/) do |arg1|
  page.current_path == "https://azcentral.formstack.com/forms/index.php"
  sleep 2
  page.has_text?(arg1)
  sleep 2
end