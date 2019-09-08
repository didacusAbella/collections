# frozen_string_literal: true

require 'test_helper'

class DequeTest < Minitest::Test
  def test_add_first
    deque = Collections::Linear::Deque.new(1, 2, 3)
    deque.add_first(4)
    assert_equal 4, deque.first
  end

  def test_add_last
    deque = Collections::Linear::Deque.new(1, 2, 3)
    deque.add_last(4)
    assert_equal 4, deque.last
  end

  def test_last
    deque = Collections::Linear::Deque.new(1, 2, 3)
    assert_equal 3, deque.last
  end

  def test_first
    deque = Collections::Linear::Deque.new(1, 2, 3)
    assert_equal 1, deque.first
  end

  def test_size
    deque = Collections::Linear::Deque.new(1, 2, 3)
    assert_equal 3, deque.size
  end

  def test_empty
    deque = Collections::Linear::Deque.new
    assert_equal true, deque.empty?
  end

  def test_remove_first
    deque = Collections::Linear::Deque.new(1, 2, 3, 4)
    assert_equal 1, deque.remove_first
  end

  def test_remove_last
    deque = Collections::Linear::Deque.new(1, 2, 3, 4)
    assert_equal 4, deque.remove_last
  end

  def test_last_empty
    deque = Collections::Linear::Deque.new
    assert_raises StandardError do
      deque.last
    end
  end

  def test_first_empty
    deque = Collections::Linear::Deque.new
    assert_raises StandardError do
      deque.first
    end
  end

  def test_remove_first_empty
    deque = Collections::Linear::Deque.new
    assert_raises StandardError do
      deque.remove_first
    end
  end

  def test_remove_last_empty
    deque = Collections::Linear::Deque.new
    assert_raises StandardError do
      deque.remove_last
    end
  end
end
