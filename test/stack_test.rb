require "test_helper"

class StackTest < Minitest::Test

  def test_size
    stack = Collections::Linear::Stack.new(1,2,3)
    assert_equal 3, stack.size
  end

  def test_empty
    stack = Collections::Linear::Stack.new
    assert_equal true, stack.empty?
  end

  def test_push
    stack = Collections::Linear::Stack.new(1,2,3)
    stack.push(4)
    assert_equal 4, stack.top
  end

  def test_pop_empty
    stack = Collections::Linear::Stack.new
    assert_raises StandardError do
      stack.pop
    end
  end

  def test_pop
    stack = Collections::Linear::Stack.new(1,2,3)
    assert_equal 3, stack.pop
  end

  def test_top_empty
    stack = Collections::Linear::Stack.new
    assert_raises StandardError do
      stack.top
    end
  end

  def test_top
    stack = Collections::Linear::Stack.new(1,2,3)
    assert_equal 3, stack.top
  end
end