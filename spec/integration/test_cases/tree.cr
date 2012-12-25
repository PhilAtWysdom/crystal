# output: !$accklorrssty

class Node
  def initialize(v)
    @value = v
  end

  def add(x)
    node_ptr = x < @value ? @left.ptr : @right.ptr
    if node_ptr.value.nil?
      node_ptr.value = Node.new(x)
    else
      node_ptr.value.add(x)
    end
  end

  def print
    @left.print if @left
    C.putchar @value
    @right.print if @right
  end
end

root = Node.new('$')
"crystalrocks!".chars do |c|
  root.add c
end

root.print
C.putchar '\n'