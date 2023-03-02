require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return head if head == nil || head.next_node == nil
    current_node = head

    current = @head
    @head = @tail
    @tail = current

    head = reverse_node(current)
  end


  def reverse_node(node)
    if (node == nil)
      return nil
    end

    temp_next = node.next_node

    node.next_node = node.prev_node
    node.prev_node = temp_next

    if (node.prev_node == nil)
      return node
    end

    return reverse_node(node.prev_node)
  end
end
