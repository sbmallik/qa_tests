x# Steps to fill in form...

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

Then(/^I check for this text in the Text Area: "(.*?)"$/) do |content1|
#Then(/^I fill in the Text Area area with 'testing miyagi'$/) do

  #find(:xpath, "//iframe[@class='wysihtml5-sandbox']").click
  #find(:xpath, "//body[@class='form-control']").set content1

  #form_iframe = find(:xpath, "//iframe[@class='wysihtml5-sandbox']").click
  #form_iframe = find(:xpath, "//iframe[@class='wysihtml5-sandbox']").click
  sleep 2

  within(all("iframe.wysihtml5-sandbox").first) do
    page.should have_content(content1)
  end

#form_iframe = all('iframe.wysihtml5-sandbox').last
#sleep 2
#  within_frame form_iframe do
#sleep 2
#    page.find('body').set(content1)
#end

  #page.within_frame('wysihtml5-sandbox') do
  #  page.should have_content(content1)
  #end
        #within(:xpath, ".//table[@id='small_calendar'][0]") do #chokes
    #    within(all("body[class='form-control.wysihtml5-editor.placeholder']").first) do  #works!
             #page.find(:xpath, ".//table[@id='small_calendar'][0]/td[@text='5']").click #chokes
    #         page.find("p [id='2013_0_6']").click #works!
    #    end
    #end
    #within form_iframe do
      #find(:xpath, "//body[@class='form-control', :visible => false]").click
      #page.should have_content('Text here...')
      #find(:xpath, "//body[@class='form-control', :visible => false]").set content1
    #end

  #find(:xpath, "//body[@class='form-control.wysihtml5-editor']").set content1
  #find('body.form-control.wysihtml5-editor').set content1
  #find(:xpath, "//body[@class='form-control.wysihtml5-editor']").set content1
  
  #find('article-body-editor').click
  #find('wysihtml5-sandbox').click
  #find('body.form-control.wysihtml5-editor').click
  #find('body.form-control.wysihtml5-editor.placeholder').set content1

  #find(:xpath, "//input[@name='_wysihtml5_mode']").set content1

  #page.switch_to.frame(wysihtml5_frame)
  # within_frame 'wysihtml5-sandbox' do
  #     page.execute_script("wysihtml5.editor.setValue(content1)")
  # end
  #page.switch_to.default_content

  #fill_in_wysihtml5 fill_in(:xpath, "//body", :with => content1)

  #fill_in_wysihtml5 'wysihtml5-sandbox', with: 'testing miyagi'

  #form_iframe = all('iframe.wysihtml5-sandbox').last
    #within_frame form_iframe do
    #page.find('body').set('SomeContent')
  #end


  #wysihtml5_frame = all('iframe.wysihtml5-sandbox')
    #page.switch_to.frame(wysihtml5_frame)
    #within_frame wysihtml5_frame do
    #within_frame 0 do
     # find('body').set(content1)
    #end

    #editor_body = page.find(:tag_name => 'body')
    #editor_body.send_keys(content1)


  #page.execute_script("wysihtml5.Editor.setValue('<p>testing miyagi</p>')")
  #page.execute_script %Q{ $('iframe.wysihtml5-sandbox').data("wysihtml5").editor.setValue('#{content1}') }
  #page.execute_script "$('#summary').data('wysihtml5').editor.setValue('test');"
  #within_frame(find('iframe.wysihtml5-sandbox')) do
    #find('body').set(content1)
  #end
  #driver.switch_to.default_content
end

Then(/^I click on "(.*?)"$/) do |text4|
  sleep 2
  click_button text4
end

Then(/^I should see "(.*?)" in red at the top of the page$/) do |text5|
  sleep 4
  page.should have_content text5
end







PATH
  remote: .
  specs:
    capybara_wysihtml5 (0.0.1)

GEM
  remote: https://rubygems.org/
  specs:
    rake (10.4.2)
    builder (>= 2.1.2)
    diff-lcs (>= 1.1.3)

PLATFORMS
  ruby

DEPENDENCIES
  bundler
  capybara_wysihtml5!
  rake