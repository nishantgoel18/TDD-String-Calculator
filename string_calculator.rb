module StringCalculator
  def add
    return 0 if empty?
    
    if include?(',')
      numbers_to_added.sum
    end
  end

  def numbers_to_added
    split(',').map(&:to_i)
end