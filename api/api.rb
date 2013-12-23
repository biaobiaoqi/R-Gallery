require 'grape'
require 'rack/contrib'

module Biaobiaoqi
  class API < Grape::API
    use Rack::JSONP
    format :json
    get '/ping' do
      { :status => "OK" }
    end

    get '/getPhotosLists' do
      {:photos => { :photo => [
        {:id =>"fixedgearIMG_1010.JPG", :title =>"This is a Title"}, 
        {:id =>"zombie2013-12-15%2023.44.48.png", :title =>"Zombie"}, 
        {:id =>"zombie2013-12-15%2023.51.51.png", :title =>"Zombie"} 
      ]}}
    end
  end
end
