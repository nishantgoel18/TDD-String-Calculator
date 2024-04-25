require_relative '../string_calculator'
require 'rspec'

def add_to(number_string)
  number_string.extend(StringCalculator).add
end

RSpec.describe "StringCalculator" do
  context "add method" do
    it "should return 0 for empty string" do
      expect(add_to("")).to eq(0)
    end

    it "should add correctly if numbers in input are comma separated" do
      expect(add_to("2,3")).to eq(5)
    end

    it "should add correctly if more than 2 numbers in input are comma separated" do
      expect(add_to("2,3,5")).to eq(10)
    end

    it "should throw invalid input if input ends with '\n'" do
      expect(add_to("1,\n")).to eq("invalid input")
    end
  end
end