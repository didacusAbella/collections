# frozen_string_literal: true

module Collections
  module Linear
    # A linked list is a collection of elements where elements aren't memorized
    # in sequential order
    class LinkedList
      # @!attribute [r] size
      # @return [Integer]
      attr_reader :size
      # Create a new linked list
      # @param args [Array<Object>] list of initial elements
      # @return [Collections::Linear::LinkedList] the created list
      def initialize(*args)
        @tail = Collections::NotLinear::LinkedNode.new(nil)
        @head = Collections::NotLinear::LinkedNode.new(nil)
        @size = args.size
        args.each { |element| add_last(element) }
      end

      # @return [Boolean] true if the list is empty, false otherwise
      def empty?
        size.zero?
      end

      # Add an element as first element
      # @param element [Object] the new node
      # @return [Collections::NotLinear::Nodes::LinkedList]
      def add_first(element)
        node = Collections::NotLinear::LinkedNode.new(element)
        node.next = head.next
        head.next = node
        @size += 1
        self
      end

      # Add an element as last element
      # @param element [Object] the element to add
      # @return [Collections::NotLinear::Nodes::LinkedList]
      def add_last(element)
        node = Collections::NotLinear::LinkedNode.new(element, @tail)
        @tail.next.next = node
        @tail.next = node
        @size += 1
        self
      end

      # Remove first node with the specific value
      # @param value [Object] the value to remove
      # @return [Collections::NotLinear::LinkedNode] the removed node
      def remove(value)
        first = @head.next
        first = first.next while first.value != value
        @size -= 1
        first
      end
    end
  end
end
