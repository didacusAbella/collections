# frozen_string_literal: true

module Collections
  module NotLinear
    # A node with a referece to the next node
    class LinkedNode < Collections::NotLinear::Node
      # @!attribute [rw] next
      # @return [Collections::NotLinear::LinkedNode]
      attr_accessor :next
      # Create a new linked node
      # @param value [Object] the element
      # @param next_reference [Collections::NotLinear::LinkedNode] the next node
      # @return [Collections::NotLinear::LinkedNode]
      def initialize(value, next_reference = nil)
        super(value)
        self.next = next_reference
      end
    end
  end
end
