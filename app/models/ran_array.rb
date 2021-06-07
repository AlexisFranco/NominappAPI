class RanArray < ApplicationRecord
  serialize :number, Array

  def range(arrays)
    max_length = 0
    max_range = []
    arrays.to_a.each do |arr|
      if arr.length > max_length
        max_length = arr.length
        max_range = arr
      end
    end
    return [max_range[0], max_range[-1]]
  end
end
