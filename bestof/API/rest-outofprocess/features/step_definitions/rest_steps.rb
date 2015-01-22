Given(/^the system knows about the following configs:$/) do |configs|
  File.open('configs.json', 'w') do |f|
    f.write(configs.hashes.to_json)
  end
end

When(/^the client requests GET (.*)$/) do |path|
  @last_response = HTTParty.get("http://localhost:9999" + path)
end

Then(/^the response should be JSON:$/) do |json|
  JSON.parse(@last_response.body).should == JSON.parse(json)
end
