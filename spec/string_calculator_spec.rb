require "string_calculator"

RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns number itself for a single number" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns sum of two comma-separated numbers" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

    it "handles any amount of numbers" do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it "handles new lines between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "supports custom delimiter with //;\\n syntax" do
      expect(StringCalculator.add("//;\n1;2;3")).to eq(6)
    end

    it "raises error for a single negative number" do
      expect { StringCalculator.add("1,-2,3") }
        .to raise_error("negative numbers not allowed -2")
    end

    it "lists all negative numbers in exception message" do
      expect { StringCalculator.add("//#\n-1#2#-3#4#-5") }
        .to raise_error("negative numbers not allowed -1,-3,-5")
    end

    it "handles custom delimiter mixed with newline" do
      expect(StringCalculator.add("//|\n1|2\n3")).to eq(6)
    end
  end
end