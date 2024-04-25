require_relative '../string_calculator'
require 'rspec'

def add_to(number_string)
  number_string.extend(StringCalculator).add
end

def add_to_error_message(number_string, expected_sum)

end

RSpec.describe "StringCalculator" do
  context "sum method" do
    it "should return 0 for empty string" do
      expect(add_to("")).to eq(0)
    end

    it "should add correctly if numbers in input are comma separated" do
      expect(add_to("2,3")).to eq(5)
    end
  end
end