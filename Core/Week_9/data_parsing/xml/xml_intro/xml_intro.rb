require 'nokogiri'

xml = Nokogiri::XML(File.read('xml_menu.xml'))

# .search('tagname') will return all tags of the chosen name. These are indedxed like an array.
#
# puts xml.search('name')[3]
# puts xml.search('calories')

# xml.search('name').each_with_index do |item, index|
#   puts "#{item.text} has #{xml.search("calories")[index].text} calories."
# end

# XPath

puts xml.xpath('/breakfast_menu/food/price')
