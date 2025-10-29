class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiters = [",", "\n"]
    body = numbers.dup

    # Custom delimiter syntax: //;\n1;2;3
    if body.start_with?("//")
      header, rest = body.split("\n", 2)
      custom_delimiter = header[2..]
      delimiters = [custom_delimiter, "\n"]
      body = rest
    end

    # Split based on multiple delimiters
    regex = Regexp.union(delimiters)
    tokens = body.split(regex).reject(&:empty?)

    negatives = tokens.select { |t| t.to_i < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    tokens.map(&:to_i).sum
  end
end