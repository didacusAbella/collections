module Collections
  module Linear

    # A deque is a data structure that handle elements either FIFO either LIFO 
    # @author didacusabella
    # @version 1.0
    class Deque
      
      # Create a new deque
      # @param args [Array<Object>] the initial optional elements
      # @return [Collections::Linear::Deque]
      def initialize(*args)
        @deque_array = args
      end

      # Add a new element to the front of the queue
      # @param element [Object] the new element
      # @return [Collections::Linear::Deque] the updated deque
      def add_first(element)
        @deque_array.unshift(element)
        return self
      end

      # Add an element to the rear 
      # @param element [Object] the new element
      # @return [Collections::Linear::Deque] the updated deque
      def add_last(element)
        @deque_array.push(element)
        return self
      end

      # Remove an element from the front
      # @raise [StandardError] if the deque is empty
      # @return [Object] the removed front
      def remove_first
        raise StandardError if self.empty?
        @deque_array.shift
      end

      # Remove an element from the rear
      # @return [Object] the removed rear
      def remove_last
        raise StandardError if self.empty?
        @deque_array.pop
      end

      # Get the actual front element
      # @return [Object] the front element
      def first
        raise StandardError if self.empty?
        @deque_array.first
      end

      # Get the rear element
      # @return [Object] the rear element
      def last
        raise StandardError if self.empty?
        @deque_array.last
      end

      # Return the size of the deque
      # @return [Integer]
      def size
        @deque_array.size
      end

      # Check if the deque is empty
      # @return [Boolean]
      def empty?
        @deque_array.empty?
      end
    end
  end
end