#encoding=UTF-8
require 'yaml'

file_names = IO.readlines('horiz_list')

data = {'photos' => []}
file_names.each do |pic_id|
  pic_id.delete!("\n") 
  new_pic = {"title" => 'pic', 'id' => pic_id}
  data['photos'] << new_pic
end


File.open('../db/horiz_photos.yml', "w") {|f| YAML.dump(data, f)}

puts '=============produce horiz_photos============'

data = YAML.load(File.open('../db/horiz_photos.yml'))
puts data


file_names = IO.readlines('verti_list')

data = {'photos' => []}
file_names.each do |pic_id|
  pic_id.delete!("\n") 
  new_pic = {"title" => 'pic', 'id' => pic_id}
  data['photos'] << new_pic
end


File.open('../db/verti_photos.yml', "w") {|f| YAML.dump(data, f)}

puts '=============produce verti_photos============'

data = YAML.load(File.open('../db/verti_photos.yml'))
puts data