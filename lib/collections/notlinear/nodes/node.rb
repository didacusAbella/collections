# frozen_string_literal: true

module Collections
  module NotLinear
    # Simple node
    class Node
      # @!attribute [rw] value
      # @return [Object] the wrapping element
      attr_accessor :value

      def initialize(value = nil)
        value = value
      end
    end
  end
end
