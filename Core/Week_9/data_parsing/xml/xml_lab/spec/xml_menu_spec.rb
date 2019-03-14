require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = GuiseppesMenu.new
  end

  it "no price should be more than £10" do
    @xml_menu.get_price.each do |price|
      expect(price).to be < 10
    end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    # Consider children element methods - Remember to step through the data and print out to the command line if you need it
    @xml_menu.get_all_food_items.each do |item|
      if item.first_element_child.text != "Full Breakfast"
        expect(item.elements[3].text.to_i).to be < 1000
      end
    end
  end

  it "should have all waffle dishes stating you get two waffles" do
    # Consider children element methods - Remember to step through the data and print out to the command line if you need it
    @xml_menu.get_all_food_items.each do |item|
      if item.elements[0].text.include? "Waffles"
        expect(item.elements[2].text.downcase).to include 'two'
      end
    end
  end

end
