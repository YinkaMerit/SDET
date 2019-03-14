require 'nokogiri'

class GuiseppesMenu

  attr_accessor :menu

  def initialize
    @menu = Nokogiri::XML(File.open('./xml_menu.xml'))
  end

  # Place your methods here
  def get_all_food_items
    @menu.search('food')
  end

  def get_price
    price_array =[]

    @menu.search('price').each do |price|
    price_array.push(price.text.gsub(/[£]/,'').to_f)
    end

    price_array

  end

  def get_calories
    @menu.search('calories')
  end

end
