require "rails_helper"

describe "Filters test on", :sauce => true do
  it "devbestof.azcentral.com results page" do
    
  	# Given and When
    visit "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks"

    filters = find '.applied-filters'
    expect( filters ).to have_content "Showing results for All and displayed for All Locations"

    #Then, And and Then
    page.find('a.filter-heading', :text => "Categories").click

	page.find('li.filterby-js', :text => 'OUTDOORS & RECREATION').click

    filter2 = find '.applied-filters'
    expect( filter2 ).to have_content "Showing results for outdoors & recreation and displayed for All Locations"

  end
end


	Scenario: Search Results test #2 - Sorting Content

		Given I am looking at another results page on devbestof.azcentral.com
		When the filter feedback text now says "Showing results for All and displayed for All Locations"
		Then now I click on "Sort Type"
		And I select 'Category'
		Then the filter feedback text should now say "Showing results for All and displayed for All Locations , sorted by category"


describe "Filters test on", :sauce => true do
  it "devbestof.azcentral.com results page" do
    
  	# Given and When
    visit "http://devbestof.azcentral.com/winners/2014/results?&types=Critics%27%20Picks"

    filters = find '.applied-filters'
    expect( filters ).to have_content "Showing results for All and displayed for All Locations"

    #Then, And and Then
    page.find('a.filter-heading', :text => "Categories").click

	page.find('li.filterby-js', :text => 'OUTDOORS & RECREATION').click

    filter2 = find '.applied-filters'
    expect( filter2 ).to have_content "Showing results for outdoors & recreation and displayed for All Locations"

  end
end


=begin
describe "Make Rame test work", :sauce => true do
  it "Should mention the inventor of instant Ramen" do
    visit "http://en.wikipedia.org/"
    fill_in 'search', :with => "Ramen"
    click_button "searchButton"

    heading = find '#firstHeading'
    expect( heading ).to have_content "Ramen"
  end
end
=end