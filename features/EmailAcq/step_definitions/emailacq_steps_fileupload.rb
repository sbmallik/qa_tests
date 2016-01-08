# upload csv file
Given(/^I am on the file uploader page$/) do
    visit ('http://emailacq-uploader.azcentral.com/')
    sleep 3
end
When(/^I attach the correct file in the Downloads folder$/) do
    page.attach_file('uploaded_file', File.absolute_path('/Users/temre/Downloads/50emails.csv'))
    sleep 3    
end
Then(/^I click the 'Upload' button$/) do
    click_button('Upload')
    #page.find('input', :text => 'Upload').click
end
And(/^then those emails should be received in Exact Target$/) do
  # CONTACT ERIN SANSOME THE NEXT DAY TO SEE IF ENTRIES ARE THERE
end