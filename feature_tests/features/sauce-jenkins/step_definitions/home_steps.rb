Given 'I am on the state farm homepage' do
  @homepage = HomePage.visit('http://www.statefarm.com/')
end

Then(/^the title of the page should be "(.*?)"$/) do |text|
  expect(@homepage.title).to match(text)
end
