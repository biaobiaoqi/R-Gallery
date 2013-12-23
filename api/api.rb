#encoding=UTF-8
require 'grape'
require 'rack/contrib'
require 'yaml'

module Biaobiaoqi
  class API < Grape::API
    use Rack::JSONP
    format :json
    get '/ping' do
      { :status => "OK" }
    end

    get '/getPhotosLists' do
      content_type "text/plain"
      YAML.load(File.open("./db/photos.yml"))
      #{:photos => { :photo => [{:id =>"fixedgearIMG_1010.JPG", :title =>"This is a Title"}, {:id =>"fixedgearIMG_1019.JPG", :title =>"The seconde one"}]}}
    end
  end
end
