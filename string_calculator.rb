module StringCalculator
  def add
    return 0 if empty?
    return "invalid input" if index("\n") == length-1
    numbers_to_added.sum
  end

  def numbers_to_added
    split(',').map(&:to_i)
  end
end