# Steps to fill in form...

Given(/^I am on the main Miyagi page at "(.*?)", and I login$/) do |url2|
  visit url2
  fill_in('Username', :with => 'admin')
  fill_in('Password', :with => 'Okinawa-Prefecture')
  click_button('Log In')
end

When(/^I navigate to the "(.*?)" page$/) do |button1|
  sleep 2
  click_link('dev')
  click_button(button1)
end

Then(/^I select the 2015 option from the Year dropdown$/) do
  sleep 2
  find('#year').find("option[value='2015']").select_option
end

Then(/^I select the Critics option from the Type dropdown$/) do
  sleep 2
  find('#category').find("option[value='16']").select_option
end

Then(/^I select the FOOD & DRINK option from the Subcateory dropdown$/) do
  sleep 2
  find('#subcategory').find("option[value='107']").select_option
end

Then(/^I fill in Award with "(.*?)"$/) do |text1|
  sleep 2
  fill_in("award_name", :with => text1)
end

Then(/^I fill in Winner with "(.*?)"$/) do |text2|
  sleep 2
  fill_in("winner_name", :with => text2)
end

#Then(/^I fill in the Text Area with "(.*?)"$/) do |content|
Then(/^I change the placeholder text in the Text Area$/) do
#Then(/^I should find 'Text here...' in the Text Area$/) do

  #fill_in(:placeholder => "Text here...", :with => "testing miyagi")

  #find("textarea[placeholder='Text here...']")
  
  #find("textarea[placeholder='First Name']").set content

  #find(:css, '#article-body-editor').should have_content(content)
  #find(:xpath, './/textarea[@id="article-body-editor"]').should have_content(content)
  #find('#article-body-editor').should have_content(content)
  #find('article-body-editor').should have_content(content)
  #fill_in_wysihtml5("article-body-editor", :with => content)
  #page.execute_script %Q{ $('#article-body-editor').data("wysihtml5").editor.setValue('#{content}') }
  #page.execute_script %Q{ $('#article-body-editor').wysihtml5().data('wysihtml5').editor.setValue('#{content}') }
  #page.execute_script("$(#article-body-editor).wysihtml5().data('wysihtml5').editor.setValue('test'))')
  #page.execute_script('$(tinymce.editors[0].setContent("my content here"))')
  fill_in('article-body-editor', :with => 'testing miyagi')
  #fckeditor_fill_in('article-body-editor', 'testing miyagi')
end

Then(/^I click on "(.*?)"$/) do |text4|
  sleep 2
  click_button text4
end

Then(/^I should see "(.*?)" in red at the top of the page$/) do |text5|
  sleep 4
  page.should have_content text5
end