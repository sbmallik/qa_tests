Given(/^I visit the local version of the American Truck Fest$/) do
  visit "http://pages.azcentral.com/ldsn-american-trucker/"
  sleep 2
end
When(/^I enter data in the required form fields$/) do
  #<input type="text" id="field37604020" name="field37604020" size="50" required="" placeholder="Your name" title="Your name" value="" class="fsField fsRequired" aria-required="true">
  #<input type="email" id="field37604009" name="field37604009" size="50" placeholder="Your email address" title="Your email address" value="" class="fsField fsFormatEmail">
  #<input id="fsSubmitButton2188020" class="fsSubmitButton" type="submit" value="Submit Form">

  fill_in('field38140147', :with => "Testing")
  sleep 2
  fill_in('field38140148', :with => "test@test.com")
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



Given(/^I am on the American Truck Fest Omniture page at "(.*?)"$/) do |url|
  visit url
end

Then(/^I should see the correct Ominture account code for trucker feature$/) do
  page.has_text?('var omnitureDesktopAccount = "gpaper158";
var omnitureMobileAccount = "gpapermobile158";
var mobile = /mobile|android|webos|iphone|ipod|blackberry|iemobile|opera mini/i.test(navigator.userAgent.toLowerCase());
var s_account = omnitureDesktopAccount;')
end
