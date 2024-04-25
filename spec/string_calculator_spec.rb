require_relative '../string_calculator'
require 'rspec'

def add_to(number_string)
  number_string.extend(StringCalculator).add
end

RSpec.describe "StringCalculator" do
  context "sum method" do
    it "should return 0 for empty string" do
      expect(add_to("")).to eq(0)
    end
  end
end