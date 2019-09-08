# frozen_string_literal: true

module Collections
  module Linear
    # The queue data structures add elements ina FIFO (first in first out) manner.
    # Is implemented with a Ruby array
    # @author didacusabella
    # @version 1.0
    class Queue
      # Create a new queue with some optional elements
      # @param args [Array<Object>] optional elements
      # @return [Collections::Linear::Queue] the created queue
      def initialize(*args)
        @queue_array = args
      end

      # Add a new element to the front of the queue
      # @param element [Object] the element to add
      # @return [Collections::Linear::Queue] the updated queue
      def enqueue(element)
        @queue_array.unshift(element)
      end

      # Remove the front element from the queue
      # @raise [StandardError] if the queue is empty
      # @return [Object] the removed element
      def dequeue
        raise StandardError if empty?

        @queue_array.shift
      end

      # Get the first element in the queue
      # @raise [StandardError] if the queue is empty
      # @return [Object] the front element
      def front
        raise StandardError if empty?

        @queue_array.first
      end

      # Check of the queue is empty
      # @return [Boolean] true if the queue doesn't have elements
      def empty?
        @queue_array.empty?
      end

      # Return the size of the queue
      # @return [Integer] the size
      def size
        @queue_array.size
      end
    end
  end
end
