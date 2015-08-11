Given(/^I am on the main Miyagi page at "(.*?)", and I login$/) do |url2|
  visit url2
  fill_in('Username', :with => 'admin')
  fill_in('Password', :with => 'Okinawa-Prefecture')
  click_button('Log In')
end

When(/^I navigate to the Create New Article page$/)
  click_link('dev')
  click_button('Create New Article')
end

Then(/^I select the Critics option from the Type dropdown$/) do
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

# Used to fill ckeditor fields
# @param [String] locator label text for the textarea or textarea id
def fill_in_ckeditor(locator, params = {})
  # Find out ckeditor id at runtime using its label
  locator = find('id', text: locator)[:for] if page.has_css?('id', text: locator)
  # Fill the editor content
  page.execute_script <<-SCRIPT
      var ckeditor = CKEDITOR.instances.#{locator}
      ckeditor.setData('#{params[:with]}')
      ckeditor.focus()
      ckeditor.updateElement()
  SCRIPT
end


=begin
def fckeditor_fill_in(id, params = {})
    page.execute_script %Q{
      var ckeditor = CKEDITOR.instances.#{id}
      ckeditor.setData('#{params[:with]}')
      ckeditor.focus()
      ckeditor.updateElement()
    }
end
=end

Then(/^I fill in the Text Area area with 'testing miyagi'$/) do
  # page.execute_script("document.getElementById('#some-id').value = 'some-value'");
  # fill_in('article-body-editor', :with => 'testing miyagi')
  fill_in_ckeditor 'article-body-editor', with: 'testing miyagi'
  # fckeditor_fill_in('article-body-editor', 'testing miyagi')
end

Then(/^I click on "(.*?)"$/) do |text4|
  click_button text4
end

Then(/^I should see "(.*?)" in red at the top of the page$/) do |text5|
  page.should have_content text5
end



http://watirmelon.com/2011/08/12/automate-entering-text-into-wysiwyg-editors-using-watir-webdriver/
require 'watir-webdriver'
b = Watir::Browser.new :firefox
b.goto 'http://ckeditor.com/demo'
b.execute_script("CKEDITOR.instances['editor1'].setData('hello world');")
b.frame(:title => 'Rich text editor, editor1, press ALT 0 for help.').send_keys 'hello world again'




http://makandracards.com/makandra/22363-cucumber-wait-until-ckeditor-is-loaded
When /^I fill in the "([^\"]+)" WYSIWYG editor with:$/ do |selector, html|
  patiently do
    page.execute_script("return isCkeditorLoaded('#{selector}');").should be_true
  end
  html.gsub!(/\n+/, "") # otherwise: unterminated string literal (Selenium::WebDriver::Error::JavascriptError)
  page.execute_script("CKEDITOR.instances['#{selector}'].setData('#{html}');")
end
function isCkeditorLoaded(instance_selector) {
  // instance_selector is e.g. 'template_html'
  var status;
  if (window.CKEDITOR && CKEDITOR.instances && CKEDITOR.instances[instance_selector]) {
    status = CKEDITOR.instances[instance_selector].status;
  }
  return status === 'ready';
};



stripe = page.driver.window_handles.last

page.within_window stripe do
  fill_in "Name", :with => "Name"
  fill_in "Street", :with => "Street"
  fill_in "Postal", :with => 10000
  fill_in "City", :with => "Berlin"

  click_button "Payment Info"
end



module FillInWysihtml5
  def fill_in_wysihtml5(label, opts={})
    page.execute_script <<-JAVASCRIPT
      var id = $("label:contains(#{label})").attr("for");
      $("#" + id).data("wysihtml5").editor.setValue("#{opts[:with]}");
    JAVASCRIPT
  end
end



module Wysihtml5Helper
  def fill_in_wysihtml5(text)
    #js must be enabled
    page.execute_script("editor.setValue('#{text}')")
  end
end



      Then I select the 2015 option from the Year dropdown
      Then I select the Critics option from the Type dropdown
      Then I select the FOOD & DRINK option from the Subcateory dropdown
      Then I fill in Award with "testing miyagi"
      Then I fill in Winner with "testing miyagi"




  page.should have_selector 'h1'
  page.should have_selector 'iframe'

  page.within_frame 'ident' do
    page.should have_selector 'h3'
    page.should have_no_selector 'h1'
  end

  page.within_frame 'pretty_name' do
    page.should have_selector 'h3'
    page.should have_no_selector 'h1'
  end


  #page.execute_script %Q{ $('#article-body-editor').data("wysihtml5").editor.setValue('#{content1}') }
  #find('iframe.wysihtml5-sandbox').click
  #find(:xpath, 'article-body-editor').click
  #find('#article-body-editor').click
  #find('input', :name => '_wysihtml5_mode').click
  #find(:xpath, "//input[@name='_wysihtml5_mode']").click
  #form_iframe = all('iframe.wysihtml5-sandbox').last
  #sleep 2
  #form_iframe = find('iframe.wysihtml5-sandbox').last
    #within_frame 2 do
    #within_frame form_iframe do


form_iframe = all('iframe.wysihtml5-sandbox').last
within_frame form_iframe do
  page.find('body').set('SomeContent')
end



stripe_iframe = page.driver.window_handles.last
  page.within_window stripe_iframe do
    fill_in "email", with: "test-user@example.com" 
    ...
  end



require "capybara_wysihtml5/version"
module Capybara
  module Wysihtml5
    def fill_in_wysihtml5(css_id, options = {})
      options[:with] ||= ''
      page.execute_script("$('##{css_id}').data('wysihtml5').editor.setValue('#{options[:with]}');")
    end
  end
end



page.execute_script %Q{ $('#textarea').data("wysihtml5").editor.setValue('#{text}') }




  module Wysihtml5
    def fill_in_wysihtml5(css_id, options = {})
      options[:with] ||= ''
      page.execute_script("$('##{css_id}').data('wysihtml5').editor.setValue('#{options[:with]}');")
    end
  end
  