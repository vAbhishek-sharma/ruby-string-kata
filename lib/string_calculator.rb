class StringCalculator
  def initialize; end

  def add(input)
    return 0 if input.nil? || input.empty?

    delims = [",", "\n"]
    body = input

    if input.start_with?("//")
      header, body = input.split("\n", 2)
      delims = [header[2]]   # single-char delimiter
    end

    nums = body.split(Regexp.union(delims)).map!(&:to_i)
    nums.sum
  end
end
