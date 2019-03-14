module Mammals

  def self.common_traits
    puts "All mammals have vertebrate"
  end

  class SharedTraits
    def feed_young
      puts "I like milk"
    end
  end

  class Biped < SharedTraits
    def legs
      puts "I have 2 legs"
    end
  end

  class Quadruped < SharedTraits
    def self.legs
      puts "I have 4 legs"
    end
  end

end

# Mammals.common_traits
#
# human = Mammals::Biped.new
# dog = Mammals::Quadruped.new
#
# human.legs
# human.feed_young
#
# dog.legs
# dog.feed_young
