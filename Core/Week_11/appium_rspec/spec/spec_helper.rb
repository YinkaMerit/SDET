require "rspec"
require "appium_lib"

RSpec.configure do |config|
  config.formatter = :documentation
end

def opts
  {
    caps:{
      "app": "/Users/tech-a51/Documents/SDET/Core/Week_11/apk/budgetwatch.apk",
      "platformName": "Android",
      "deviceName": "emulator-5554"
    }
  }

end
