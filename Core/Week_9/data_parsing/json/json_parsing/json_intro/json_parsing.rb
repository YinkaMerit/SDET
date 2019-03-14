require 'json'

json = File.read('json_example.json')

# puts json.class

json_parsed = JSON.parse(json)

# puts json_parsed.class

json_parsed["colors"].each do |color|
  puts color["color"]
end
