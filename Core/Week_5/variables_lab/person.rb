class Person

    def name
        # create a name variable
        name = "Steve"
    end

    def age
      age = 22
        # create age variable here

    end

    def children
      children = [1,2,3,4]
        # create children array here
    end

    def address
      # create address hash here
        address = {
          :postcode => "b12 lrw",
          :city => "Birmingham",
          :house_number => 23,
          :street => "Brook",
          :town => "Brum",
          :county => "England",
          :email_addresses => ["test@email.com","test2@email.com"]

        }
    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }

        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"
    end

end
