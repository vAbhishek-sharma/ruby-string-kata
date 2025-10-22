require "rspec"
require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
  it "exists" do
    expect(described_class.new).to be_a(StringCalculator)
  end
end
