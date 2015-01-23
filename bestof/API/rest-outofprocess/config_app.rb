require 'sinatra'
require 'json'

class ConfigsApp < Sinatra::Base
  set :data do
    JSON.parse(File.read('configs.json'))
  end

  get "/configs" do
    content_type :json
    ConfigsApp.data.to_json
  end

  post '/configs' do
    content_type :json

    output = ConfigsApp.data + JSON.parse(params[:confs])

    File.open('configs.json', 'w') do |f|
      f.write(output.to_json)
    end
  end
end
