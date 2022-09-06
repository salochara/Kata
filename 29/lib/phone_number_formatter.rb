# frozen_string_literal: true

class PhoneNumberFormatter
  def initialize(array)
    @array = array
  end

  def create_phone_number
    "(#{phone_number_part(0)}) #{phone_number_part(1)}-#{phone_number_part(2)}"
  end

  private

  attr_reader :array

  def phone_number_part(part)
    case part
    when 0
      "#{array[0..2].join}"
    when 1
      "#{array[3..5].join}"
    when 2
      "#{array[6..9].join}"
    end
  end
end
