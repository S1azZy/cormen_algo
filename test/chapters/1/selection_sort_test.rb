# frozen_string_literal: true

require 'minitest_helper'

class SelectionSortTest < Minitest::Test
  def test_empty_list
    insertion_sort = SelectionSort.new
    assert_equal [], insertion_sort.call([])
  end

  def test_list_with_one_element
    insertion_sort = SelectionSort.new
    assert_equal [1], insertion_sort.call([1])
  end

  def test_already_sorted_list
    insertion_sort = SelectionSort.new
    assert_equal [1,2,3], insertion_sort.call([1,2,3])
  end

  def test_simple_sort
    insertion_sort = SelectionSort.new
    assert_equal [1,2,3], insertion_sort.call([3,1,2])
  end

  def test_big_array
    insertion_sort = SelectionSort.new
    list = (0..500).to_a
    assert_equal list, insertion_sort.call(list.shuffle)
  end
end
