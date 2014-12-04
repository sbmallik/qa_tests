# Steps to fill in form...

Given(/^I am on the page where I can create an article at "(.*?)"$/) do |url2|
  visit url2
end

When(/^I select the Critics option from the Type dropdown$/) do
  find('#category').find(:xpath, 'option[2]').click
end

Then(/^I select the FOOD & DRINK option from the Subcateory dropdown$/) do
  find('#subcategory').find(:xpath, 'option[2]').click
end

Then(/^I fill in Award with "(.*?)"$/) do |text1|
  fill_in("award_name", :with => text1)
end

Then(/^I fill in Winner with "(.*?)"$/) do |text2|
  fill_in("winner_name", :with => text2)
end

def fckeditor_fill_in(id, params = {})
    page.execute_script %Q{
      var ckeditor = CKEDITOR.instances.#{id}
      ckeditor.setData('#{params[:with]}')
      ckeditor.focus()
      ckeditor.updateElement()
    }
end

Then(/^I fill in the Text Area area with 'testing miyagi'$/) do
  # fill_in('article-body-editor', :with => 'testing miyagi')
  fckeditor_fill_in('article-body-editor', 'testing miyagi')
end

Then(/^I click on "(.*?)"$/) do |text4|
  click_button text4
end

Then(/^I should see "(.*?)" in red at the top of the page$/) do |text5|
  page.should have_content text5
end