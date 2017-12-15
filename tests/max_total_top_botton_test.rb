require_relative 'setup'

describe MaxTotalTopBotton do
  describe '#max' do
    it 'returns maximum that is 26>' do
      hell_triangle = MaxTotalTopBotton.new([[6],[3,5],[9,7,1],[4,6,8,4]])
      hell_triangle.max.must_equal 26
    end
  end
end
