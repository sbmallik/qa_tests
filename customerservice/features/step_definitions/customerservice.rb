#1 - scenario 1
Given(/^I am using the employee customer service site$/) do
  visit "http://support.indystar.com/"
end
When(/^I click "(.*?)"$/) do |link|
  click_link(link)
end
Then(/^I should be brought to the existing Employee Customer Service form$/) do
  page.current_path == "http://static.indystar.com/customer/service/"
end


#2 - secnario 2
Then(/^I should be brought to the Subscribe form$/) do
  page.current_path == "http://www.indystar.com/subscribe"
end
#Or I should be redirected to an appropriate subscription page
# http://offers.indystar.com/specialoffer?onSuccessRedirectURL=http%3A%2F%2Fwww.indystar.com%2F%23


#3 - scenario 3
Then(/^I should be brought to the free trial page$/) do
  page.current_path == "http://indystar.com/freetrial"
end
#Or I should be redirected to an appropriate free trial page
# https://account.indystar.com/user-create/?promoCode=freetrial14isgo


#4 - scenario 4
Then(/^I should be brought to the chat support page for the Indy Star$/) do
  page.current_path == "https://chat.gannett.com/HtmlChat.jsp?PublicationBasename=indystar&PublicationId=Indianapolis&PublicationName=The%20Indianapolis%20Star"
end


#5 - scenario 5
Then(/^I should be brought to the IndyStar FAQ page$/) do
  page.current_path == "http://static.indystar.com/en/faq/"
end



#6 - scenario 6
Given(/^I am on the employee customer service site javascript file$/) do
  visit "http://support.indystar.com/static/js/bloodhound.js"
end
Then(/^I should see the correct Ominture account code$/) do
  page.has_text?('var mobile = /mobile|android|webos|iphone|ipod|blackberry|iemobile|opera mini/i.test(navigator.userAgent.toLowerCase());
var mobileUtagURL = "https://tags.tiqcdn.com/utag/gci/indystar-mobile/prod/utag.js";
var desktopUtagURL = "https://tags.tiqcdn.com/utag/gci/indystar-cobrand/prod/utag.js";')
end