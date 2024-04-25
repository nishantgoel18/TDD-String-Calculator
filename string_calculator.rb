
module StringCalculator
  def add
    return 0 if empty?
    return "invalid input" if self.index("\n") == self.length-1
    
    if !numbers_to_add.select{|n| n < 0}.empty?
      return "negative numbers not allowed: #{numbers_to_add.select{|n| n < 0}.join(', ')}"
    else
      numbers_to_add.sum
    end
  end

  def numbers_to_add
    custom_delimiter = if self.start_with?('//') && self[3] == "\n"
      self[2]
    else
      nil
    end

    if custom_delimiter.nil?
      self.gsub("\n", ',').split(',').map(&:to_i)
    else
      self.gsub(custom_delimiter, ',').gsub("\n", ',').split(',').map(&:to_i)
    end
  end
end