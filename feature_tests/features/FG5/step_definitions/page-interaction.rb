Given(/^I am on the Feel Good Five page again at "(.*?)"$/) do |url|
  visit url
  sleep 2
end

#<div class="ldsn-pf-menu-up  omni-event-js" data-omniaction="menu-list up-arrow" data-omniprop41="click-up-on-menu-list"><img src="//assets.azcentral.com/pick5/azcentral/img/arrow-up.gif"></div>

When(/^I want to test the up and down arrows on the article list$/) do
    page.find('div.ldsn-pf-menu-down').click
    sleep 2
    page.find('div.ldsn-pf-menu-up').click
    sleep 2
    page.find('div.ldsn-pf-menu-down').click
    sleep 2
end

When(/^I select the sixth article in the list$/) do
    all('a.omni-event-link')[0].click
    sleep 2
end

Then(/^the page title changes to "(.*?)"$/) do |title|
    page.has_text?('<div class="ldsn-pf-headline">
                <h1>#{title}</h1>
            </div>')
    sleep 2
end
And(/^the article that I selected should be highlighted in the list of articles$/) do
	page.has_text?('<div class="ldsn-pf-item ldsn-pf-active">
                        <a class="omni-event-link" data-omniation="click-article menu-list" data-omniprop41="click-article-from-menu-list" href="/sports-are-awesome/27664479/nfl-extra-point-changes-arizona-cardinals-impact">
                            <span class="ldsn-number">3</span>
                            <p>The Mac Attack: PAT rule could change point spreads</p>
                        </a>
                    </div>')
	sleep 2
end

And(/^the credits for the article should be visible$/) do
	page.has_text?('Scott Bordow')
	page.has_text?('azcentral sports')
	sleep 2
end