require 'json'
require_relative 'max_total_top_botton'

class HellTriangle
  def self.build
    p 'Enter the array:'
    array = convert_string(gets.chomp)

    max_total = MaxTotalTopBotton.new(array).max

    p "Maximum total from top to bottom: #{max_total}"
  end

  private

  def self.convert_string(string)
    return [] if string.empty?
    JSON.parse string
  end
end

HellTriangle.build
