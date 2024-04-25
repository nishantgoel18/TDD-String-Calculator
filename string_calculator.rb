module StringCalculator
  def add
    return 0 if empty?
    return "invalid input" if index("\n") == length-1
    
    if !numbers_to_add.select{|n| n < 0}.empty?
      return "negative numbers not allowed: #{numbers_to_add.select{|n| n < 0}.join(', ')}"
    else
      numbers_to_add.sum
    end
  end

  def numbers_to_add
    gsub("\n", ',').split(',').map(&:to_i)
  end
end