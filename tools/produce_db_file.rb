#encoding=UTF-8
require 'yaml'

file_names = IO.readlines('list')
data = {'photos' => []}
file_names.each do |pic_id|
  pic_id.delete!("\n") 
  new_pic = {"title" => 'pic', 'id' => pic_id}
  data['photos'] << new_pic
end


File.open('../db/photos.yml', "w") {|f| YAML.dump(data, f)}
puts 'h============='
data = YAML.load(File.open('../db/photos.yml'))
puts data