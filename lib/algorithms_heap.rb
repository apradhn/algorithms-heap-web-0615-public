require "pry"
class MinHeap
  attr_accessor :data, :root, :subroot

  def initialize
    @data = []
  end

  def push(element)
    if @data.empty?
      @root = element
    end
    if element <= @root
      @subroot = @root
      @root = element
    end
    @data << element
  end

  def pop
    if @data.last == @root && @subroot != @root
      @root = @subroot
    end
    @data.pop
  end

end