Given(/^I want to see 10 images on wiki cucumber page$/) do
end
   
When(/^user navigates to http:\/\/en\.wikipedia\.org\/wiki\/Cucumber$/) do
   visit 'https://en.wikipedia.org/wiki/Cucumber'

end

Then(/^user will see 10 images on page$/) do
  #page.find ('a photo', :text => 'Photo')
  expect(page).to have_css("img[src*='//upload.wikimedia.org/wikipedia/commons/thumb/4/47/Persiancucumber.jpg/250px-Persiancucumber.jpg']")
  
  expect(page).to have_css("img[src*='//upload.wikimedia.org/wikipedia/commons/thumb/9/96/ARS_cucumber.jpg/220px-ARS_cucumber.jpg']")
 

  expect(page).to have_css("img[src*='//upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Cucumber_BNC.jpg/220px-Cucumber_BNC.jpg']")


  expect(page).to have_css("img[src*='//upload.wikimedia.org/wikipedia/commons/thumb/9/96/ARS_cucumber.jpg/220px-ARS_cucumber.jpg']")

  expect(page).to have_css("img[src*='//upload.wikimedia.org/wikipedia/commons/thumb/4/47/Persiancucumber.jpg']")

  expect(page).to have_css("img[src*='//upload.wikimedia.org/wikipedia/commons/thumb/4/47/Persiancucumber.jpg']")

  expect(page).to have_css("img[src*='//upload.wikimedia.org/wikipedia/commons/thumb/4/47/Persiancucumber.jpg']")

  expect(page).to have_css("img[src*='//upload.wikimedia.org/wikipedia/commons/thumb/4/47/Persiancucumber.jpg']")

  expect(page).to have_css("img[src*='//upload.wikimedia.org/wikipedia/commons/thumb/4/47/Persiancucumber.jpg']")

  expect(page).to have_css("img[src*='//upload.wikimedia.org/wikipedia/commons/thumb/4/47/Persiancucumber.jpg/250px-Persiancucumber']")
  
  end 