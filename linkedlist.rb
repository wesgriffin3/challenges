class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node #when there is a node
    print "#{list_node.value} --> " #puts node's number with an arrow after
    print_values(list_node.next_node) #puts the next node after current node
  else
    print "nil\n"  #puts nil
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-----"

revlist = reverse_list(node3)

class Stack < LinkedListNode
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
    end

    def reverse_list(list)
    # ADD CODE HERE

      while list
          # ADD CODE HERE
          list = list.next_node
      end
    end

    # ADD CODE HERE

end
