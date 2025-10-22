class StringCalculator
  def initialize
    @called = 0
  end

  def add(input)
    @called += 1
    return 0 if input.nil? || input.empty?

    delims = [",", "\n"]
    body = input

    if input.start_with?("//")
      header, body = input.split("\n", 2)
      delims = [header[2]]
    end

    nums = body.split(Regexp.union(delims)).map!(&:to_i)

    negatives = nums.select { |n| n < 0 }
    unless negatives.empty?
      raise ArgumentError, "negatives not allowed: #{negatives.join(', ')}"
    end

    nums.reject! { |n| n > 1000 }  # ignore > 1000
    nums.sum

  end

  def get_called_count
    @called
  end
end
