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

    get '/getVerticPhotosList' do
      YAML.load(File.open("./db/vertic_photos.yml"))
      #{:photos => { :photo => [{:id =>"fixedgearIMG_1010.JPG", :title =>"This is a Title"}, {:id =>"fixedgearIMG_1019.JPG", :title =>"The seconde one"}]}}
    end

    get '/getHorizPhotosList' do
      YAML.load(File.open("./db/horiz_photos.yml"))
    end
  end
end
