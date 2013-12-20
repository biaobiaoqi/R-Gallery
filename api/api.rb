#encoding=UTF-8
require 'grape'
require 'yaml'

module Biaobiaoqi
  class API < Grape::API

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