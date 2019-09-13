# frozen_string_literal: true

module Collections
  # Contains all data strcutures where datas are not handler in sequential order
  module NotLinear
    autoload :Node, 'collections/notlinear/nodes/node'
    autoload :LinkedNode, 'collections/notlinear/nodes/linked_node'
  end
end
