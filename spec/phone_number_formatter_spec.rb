require "phone_number_formatter"

RSpec.describe PhoneNumberFormatter do
  describe '#create_phone_number' do
    let(:expected_output) { "(123) 456-7890"}
    let(:input_array) { [1, 2, 3, 4, 5, 6, 7, 8, 9, 0] }

    it 'returns the phone number in the expected format' do
      phone_number_formatter = PhoneNumberFormatter.new(input_array)

      expect(phone_number_formatter.create_phone_number).
        to eq(expected_output)
    end
  end
end
