module Collections
  module Linear
    # A stack is a data structures  where elements are added in a LIFO (Last in First Out) order
    # It is implemented with a Ruby array
    # @author didacusabella
    # @version 1.0
    # @since 1.0 
    class Stack
      # Create a new stack with some optional elements
      # @param args [Array<Object>] lis tof elements
      # @return [Collections::Linear::Stack] the created stack
      def initialize(*args)
        @array_stack = args
      end

      # Get the top of the stack
      # @raise [StandardError] if the stack is empty
      # @return [Object] the top
      def top
        raise StandardError if self.empty?
        @array_stack.last
      end

      # Add an element to the top of the stack
      # @param element [Object] the new element to add
      # @return [Collections::Linear::Stack] the updated stack
      def push(element)
        @array_stack.push(element)
        return self
      end

      # Remove the element at the top of the stack
      # @raise [StandardError] if the stack is empty
      # @return [Object] the removed element
      def pop
        raise StandardError if self.empty?
        @array_stack.pop
      end

      # Check if the stack is empty
      # @return [Boolean] true if is empty, false otherwise
      def empty?
        @array_stack.empty?
      end

      # Return the size of the stack
      # @return [Integer] the size
      def size
        @array_stack.size
      end
    end
  end
end