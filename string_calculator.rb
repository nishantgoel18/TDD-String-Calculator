module StringCalculator
  def add
    return 0 if empty?
    
    if include?(',')
      split(',').map(&:to_i).sum
    end
  end
end