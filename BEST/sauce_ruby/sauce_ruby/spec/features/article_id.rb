require "rails_helper"

describe "Wikipedia's Ramen Page", :sauce => true do
  it "Should mention the inventor of instant Ramen" do
    visit "http://en.wikipedia.org/"
    fill_in 'search', :with => "Ramen"
    click_button "searchButton"

    heading = find '#firstHeading'
    expect( heading ).to have_content "Ramen"
  end
end

=begin
describe "I am looking at a results page on devbestof.azcentral.com", :sauce => true do
  it "and the filter feedback text says 'Showing results for All and displayed for All Locations'" do
    visit "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks"

    filters = find '.applied-filters'
    expect( filters ).to have_content "Showing results for All and displayed for All Locations")
  end
end
=end

=begin
describe "Then I click on 'Categories' and then 'OUTDOORS & RECREATION'", :sauce => true do
  it "Then the filter feedback text should say 'Showing results for outdoors & recreation and displayed for All Locations'" do
    expect(page).to have_css('a.filter-heading', :text => "Categories").click
    expect(page).to have_css('li.filterby-js', :text => 'OUTDOORS & RECREATION').click
    expect(page).to have_content("Showing results for outdoors & recreation and displayed for All Locations")
  end
end
=end

=begin
    Given I am looking at a results page on devbestof.azcentral.com
    When the filter feedback text says "Showing results for All and displayed for All Locations"
    Then I click on "Categories"
    And I select 'OUTDOORS & RECREATION'
    Then the filter feedback text should say "Showing results for outdoors & recreation and displayed for All Locations"


# 2) Search Results test #1 - Filtering Content
Given(/^I am looking at a results page on devbestof.azcentral.com$/) :sauce => true do
  visit "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks"
end
When(/^the filter feedback text says "(.*?)"$/) :sauce => true do |text|
  page.has_text?(text)
end
Then(/^I click on "(.*?)"$/) :sauce => true do |click1|
  page.find('a.filter-heading', :text => click1).click
end
And(/^I select 'OUTDOORS & RECREATION'$/) :sauce => true do
  page.find('li.filterby-js', :text => 'OUTDOORS & RECREATION').click
end
Then(/^the filter feedback text should say "(.*?)"$/) :sauce => true do |text2|
  page.has_text?(text2)
end
=end

=begin

describe "The same BEST article ID on devbestof.azcentral.com", :sauce => true do
  it "should NOT also be available on devbestof.pnj.com" do
#    visit "http://devbestof.azcentral.com/winners/2014/14744910/best-star-making-machine-valley-youth-theatre"
#    visit "http://devbestof.pnj.com/winners/2015/14744910"
    visit "http://devbestof.pnj.com/winners/2015/14744910"

    url = "http://devbestof.pnj.com/"
  expect(page.current_path).to eq url
    current_path.should eq(edit_user_path(@user))
    #url = current_path
    #url = "http://devbestof.pnj.com/"
    #expect( url ).to = "http://devbestof.pnj.com/"
    #expect(url).to have_content("http://devbestof.pnj.com/")
  #expect(expected_path).to have_content(current_path)
    #expect(url).to have_content(current_path)
    #expect(url).to have_content("http://devbestof.pnj.com/")
  end
end

# 1) Article ID test
Given(/^I have found this particular article ID on devbestof\.azcentral\.com: "(.*?)"$/) do |url|
  visit url
end
When(/^I put that same article ID into the bestof\.pnj\.com site: "(.*?)"$/) do |url2|
  visit url2
end
Then(/^I should not see the article content, but I should be redirected to the homepage of "(.*?)"$/) do |url3|
  page.current_path == url3
end
=end