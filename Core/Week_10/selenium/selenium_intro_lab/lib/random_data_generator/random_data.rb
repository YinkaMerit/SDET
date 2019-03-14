require 'faker'

class DataGenerator

  def firstname
    Faker::Name.first_name.capitalize
  end

  def lastname
    Faker::Name.last_name.capitalize
  end

  def get_gender
    Faker::Gender.binary_type
  end

  def get_marital
    Faker::Demographic.marital_status
  end

  def get_city
    Faker::Address.city
  end

  def get_email
    Faker::Internet.free_email(firstname)
  end

  def get_birthday
    Faker::Date.birthday
  end

  def get_age
    Date.today.year - get_birthday.year
  end

  def get_phone_number
    Faker::Config.locale = 'en-GB'
    Faker::PhoneNumber.cell_phone.gsub(' ','')
  end

end
