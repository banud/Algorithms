class BinaryTreeNode

  attr_accessor :data, :left, :right

  def initialize(data = nil, left = nil, right = nil)
    @data = data
    @left  = left
    @right  = right
  end

  def to_s
    "#{@data.to_s}"
  end

end

####################################
=begin
----- EXAMPLE TREE -----

            1
          /   \
         2     3
        / \   / \
       4   5 6   7

=end
####################################


class BinaryTree
  attr_accessor :root

  def initialize(data)
    @root = BinaryTreeNode.new(data)
  end

  # PRE-ORDER TRAVERSAL
  # In preorder traversal the nodes of the tree would be visited in the following order:
  # 1 2 4 5 3 6 7
  def preorder_traversal_recursive(start_node = @root) # Time complexity O(n), Space complexity O(n)
    if start_node != nil
      preorder_traversal_recursive(start_node.left)
      p start_node.to_s
      preorder_traversal_recursive(start_node.right)
    end
  end

  def preorder_traversal_iterative(start_node = @root) # Time complexity O(n), Space complexity O(n)
    result = []
    return result if start_node == nil

    stack = []
    stack << start_node
    until stack.is_empty?
      temp_node = stack.pop
      result << temp_node.data
      if temp_node.right != nil
        stack << temp_node.right
      elsif temp_node.left != nil
        stack << temp_node.left
      end
    end
    result
  end

end
