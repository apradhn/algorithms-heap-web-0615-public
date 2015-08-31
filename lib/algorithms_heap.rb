require "pry"
class MinHeap
  attr_accessor :data, :root, :subroot

  def initialize
    @data = []
  end

  def push(element)
    @root = element if @data.empty?
    @subroot, @root = @root, element if element <= @root
    @data << element
  end

  def pop
    @root = @subroot if @data.last == @root && @subroot != @root
    @data.pop
  end

end