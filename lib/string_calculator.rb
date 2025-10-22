class StringCalculator
  def initialize; end

  def add(numbers)
    return 0 if numbers.nil? || numbers.empty?
    parts = numbers.split(/,|\n/)
    parts.map!(&:to_i)
    parts.sum
  end
end
