Given(/^I am on the current Feel Good Five page again at "(.*?)" and I want to share this page via the sharing tools in the uppper right-hand corner$/) do |url|
  visit url
  sleep 2
end

Then(/^the url should contain the correct article title for sharing via Facebook$/) do
    #within('ldsn-pf-social') { 
        page.has_selector?(:xpath, '//a[@data-text="Arizona\'s top high school football prospects: 2018 class"]')
        #page.has_text?('<a class="omni-event-js share-on-facebook-js ldsn-pf-share-link" href="#" data-appid="115142145268769" data-text="How changes to NFL extra points might impact Cardinals" data-description="On Tuesday, NFL owners approved changes to points after touchdowns." data-caption="" data-imageurl="http://www.gannett-cdn.com/-mm-/4e2389e07916482fe12919f7086022491e9eb211/r=500x356/local/-/media/2015/05/20/Phoenix/Phoenix/635677369607244858-extra-points.jpg" data-omniaction="share-facebook" data-omniprop41="share-on-facebook">
                            #<img src="//assets.azcentral.com/pick5/azcentral/img/facebook.gif" class="ldsn-pf-facebook">
                        #</a>')
    #}
    sleep 2
end

And(/^the url should contain the correct URL for sharing via Twitter$/) do
    #within('ldsn-pf-social') { 
        page.has_selector?(:xpath, '//a[@href="https://twitter.com/share?url=http%3A%2F%2Fdellpe1955-10.azcentral.com%3A9005%2Fsports-are-awesome%2F27650001%2Ftop-high-school-football-prospects-in-arizona-2018-class&amp;text=Arizona\'s%20top%20high%20school%20football%20prospects%3A%202018%20class&amp;original_referrer=http%3A%2F%2Fdellpe1955-10.azcentral.com%3A9005%2Fsports-are-awesome%2F27650001%2Ftop-high-school-football-prospects-in-arizona-2018-class&amp;hashtags=feelgood5"]')
    #}
	sleep 2
end

And(/^the url should contain the correct URL for sharing via E-mail$/) do
    #within('ldsn-pf-social') { 
        page.has_selector?(:xpath, '//a[@href="mailto:?subject=feelgood5&amp;body=Call%20it%20the%20Frosh%20Fab%20Fifty%2C%20the%20top%202018%20football%20players%20in%20the%20state%20of%20Arizona."]')
    #}
	sleep 2
end