require "test_helper"

class QueueTest < Minitest::Test
  def test_size
    queue = Collections::Linear::Queue.new(1,2,3)
    assert_equal 3, queue.size
  end

  def test_empty
    queue = Collections::Linear::Queue.new
    assert_equal true, queue.empty?
  end

  def test_enqueue
    queue = Collections::Linear::Queue.new(1,2,3)
    queue.enqueue(4)
    assert_equal 4, queue.front
  end

  def test_dequeue_empty
    queue = Collections::Linear::Queue.new
    assert_raises StandardError do
      queue.dequeue
    end
  end

  def test_dequeue
    queue = Collections::Linear::Queue.new(1,2,3)
    assert_equal 1, queue.dequeue
  end

  def test_front_empty
    queue = Collections::Linear::Queue.new
    assert_raises StandardError do
      queue.front
    end
  end

  def test_front
    queue = Collections::Linear::Queue.new(1,2,3)
    assert_equal 1, queue.front
  end
end