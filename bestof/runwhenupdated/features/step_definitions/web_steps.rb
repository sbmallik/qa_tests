Given(/^I am on the BESTOF home page at "(.*?)"$/) do |url|
  visit url
end

Then(/^I should get a page response with a good status$/) do
  page.status_code.should == 200
end

# featured module
Then(/^I should see the main hero module within the div id "(.*?)"$/) do |divid1|
  page.has_selector?(:xpath, './/div[@id=divid1]')
end

	And(/^I should see that the main hero "(.*?)" module contains the text "(.*?)"$/) do |divid1, text1|
	  within(divid1){ page.has_text?(text1)}
	end


# popular module
Then(/^I should see the second module that has the div id "(.*?)"$/) do |divid2|
  page.has_selector?(:xpath, './/div[@id=divid2]')
end

	And(/^I should see that the second "(.*?)" module contains the text "(.*?)"$/) do |divid2, text2|
	  within(divid2){ page.has_text?(text2)}
	end


# most shared module
Then(/^I should see the third module that has the div id "(.*?)"$/) do |divid3|
  page.has_selector?(:xpath, './/div[@id=divid3]')
end

	And(/^I should see that the third "(.*?)" module contains the text "(.*?)"$/) do |divid3, text3|
	  within(divid3){ page.has_text?(text3)}
	end


# ad module
Then(/^I should see the fourth module that has the div id "(.*?)"$/) do |divid4|
  page.has_selector?(:xpath, './/div[@id=divid4]')
end

	And(/^I should see that the fourth "(.*?)" module contains the div id "(.*?)"$/) do |divid4, seconddivid|
	  within(divid4){ page.has_selector?(:xpath, './/div[@id=seconddivid]')}
	end


# near me module
Then(/^I should see the fifth module that has the div id "(.*?)"$/) do |divid5|
  page.has_selector?(:xpath, './/div[@id=divid5]')
end

	And(/^I should see that the fifth "(.*?)" module contains the text "(.*?)"$/) do |divid5, text5|
	  within(divid5){ page.has_text?(text5)}
	end
