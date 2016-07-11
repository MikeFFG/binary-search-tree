require 'pry'

class Bst
  attr_accessor :left, :right, :data
  def initialize(data, left=nil, right=nil)
    @data = data
    @left = left
    @right = right
  end

  def insert(new_data)
    if new_data > @data
      if !@right
        @right = Bst.new(new_data, @data, nil)
      else
        @right.insert(new_data)
      end
    else
      if !@left
        @left = Bst.new(new_data, nil, @data)
      else
        @left.insert(new_data)
      end
    end
  end
end