require_relative '../string_calculator'
require 'rspec'

RSpec.describe "StringCalculator" do
  context "sum method" do
    it "should add the numbers if input is correct" do
      calc = StringCalculator.new
      calc.numbers = "1,2"
      expect(calc.sum).to eq(3)
    end
  end
end