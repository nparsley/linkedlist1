class LinkedListNode                       
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)      #setting value = to the next_node(nil)
    @value = value
    @next_node = next_node
  end
end

  def print_values(list_node)             #-this is saying to print values from which node to print from       
    if list_node                          #defining what list node is (or print from these under these circumstances)
      print "#{list_node.value} --> "     #
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end



  class Stack                           #-Stack = collection of data points, with 2 principal operations: push and pop
    attr_reader :data                     #-push = adds an element to the collection #-pop = removes the most recently added element that was not yet removed

    def initialize                      #-this is initializing the stack..setting the variable/data equal to nil (stack = Stack.new) -- this represents an empty stack
       @data = nil
    end


    def push(value)                                         #-pushing this "new" value to the stack..need to create a new node.  (creating a new node just requires
        @data = LinkedListNode.new(value, @data)            #that the newly created node is set equal to the previous(initial node) and in return set back equal also)
    end                                                     #so with the data point in this example being set to nil...think of this as the head with a node of 37 (node 1)                                               
                                                            #and linking to the next node of 99 (node 2)----so initially there is a head/nil value of nil set = 37.  37 then
                                                            #set = 99 and then 99  set = 12. (ex: stack.push(node1) -- this pushes (adds) the number 37 to the empty stack....
      # Pop an item off the stack.                          #then; stack.push(2) -- pushes the number 99 to the top of the stack.
      # Remove the last item that was pushed onto the
      # stack and return the value to the user
     
    def pop                                                 #-when popping a value of a stack, need to check if the stack is already empty..raise an exception (if statement)
      # I return a values                                   #then use value of the first node and make the first node equal to the next node of the current first node
          if @data.nil?                                     #to return the value (these values are all based on what is created in the push method above)
      value = @first.value
      @data = @data.next_node
    end

  end


  def reverse_list(list)                                    #-1st node becomes nil when reversing(left to right then right to left)  
    stack = Stack.newly                                     #need to create a new stack when reversing this list 
      while list 
         (list.value)
        
    return stack.data
  end

# Hint -- within the WHILE LOOP above, you can access the value of the current Linked List Node by calling list.value


node1 = LinkedListNode.new(37)              #-create a linkedlistnode instance with a value of 37
node2 = LinkedListNode.new(99, node1)       #-create a linkedlistnode instance with a value of 99 and taking the value of node 1 (37)
node3 = LinkedListNode.new(12, node2)       #-create a linkedlistnode instance with a value of 12 and taking the value of node 2 (99) 

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
