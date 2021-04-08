# frozen_string_literal: true

module LengthConversions
  WEBSITE = 'https://www.google.com'

  # notice the self. Don't use this if it will be
  # a mixin. Use it if you want to say
  # LengthConversions.miles_to_feet
  def self.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles)
    feet = miles_to_feet(miles)
    feet * 12
  end

  def self.miles_to_centimeters(miles)
    inches = miles_to_inches(miles)
    inches * 2.54
  end
end

puts LengthConversions.miles_to_feet(100)
puts LengthConversions.miles_to_inches(200)
puts LengthConversions.miles_to_centimeters(300)
