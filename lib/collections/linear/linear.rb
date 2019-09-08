# frozen_string_literal: true

module Collections
  # This module contains data structures that memorize data in a specific order
  module Linear
    autoload :Stack, 'collections/linear/stack/stack'
    autoload :Queue, 'collections/linear/queue/queue'
    autoload :Deque, 'collections/linear/deque/deque'
  end
end
