class MaxTotalTopBotton
  def initialize(array)
    @array = array
    @max_array = []
    @last_index = 0
  end

  def max
    find_max
    sum_max
  end

  private

  attr_accessor :array, :max_array

  def find_max
    array.each { |row| find_max_item row }
  end

  def find_max_item(row)
    valid_row = row[@last_index..@last_index + 1]
    max_array << valid_row.max
    @last_index += valid_row.index(max_array.last)
  end

  def sum_max
    max_array.inject(0) { |foo, bar| foo + bar }
  end
end
