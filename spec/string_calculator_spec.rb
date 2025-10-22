require "rspec"
require_relative "../lib/string_calculator"

RSpec.describe StringCalculator do
  subject(:sc) { described_class.new }

  it { expect(sc.add("")).to eq 0 }          # "" == 0
  it { expect(sc.add("1")).to eq 1 }          # "1" == 1
  it { expect(sc.add("1,2")).to eq 3 }        # "1,2" == 3
  it { expect(sc.add("5,7,10,3")).to eq 25 }  # to allow unknown number of comma's

end
