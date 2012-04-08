#!/usr/bin/env ruby

require 'test/unit'
require_relative '../lib/hash_with_count'

class HashWithCountTest < MiniTest::Unit::TestCase

  def test_hash_with_count_empty()
    an_array = []
    expected_result = {}
    actual_result = HashWithCount.new(an_array)
    pp actual_result
    assert_equal(expected_result, actual_result, 'hash with count empty should be empty')
  end

  def test_hash_with_count_one()
    an_array = [:a]
    expected_result = {:a => 1}
    actual_result = HashWithCount.new(an_array)
    pp actual_result
    assert_equal(expected_result, actual_result, 'hash with count empty should be empty')
  end
  
  def test_hash_with_count_two()
    an_array = [:a, :a]
    expected_result = {:a => 2}
    actual_result = HashWithCount.new(an_array)
    pp actual_result
    assert_equal(expected_result, actual_result, 'hash with count empty should be empty')
  end
  
  def test_hash_with_count_two_one()
    an_array = [:a, :a, :b]
    expected_result = {:a => 2, :b => 1}
    actual_result = HashWithCount.new(an_array)
    pp actual_result
    assert_equal(expected_result, actual_result, 'hash with count empty should be empty')
  end

  def test_hash_with_count_two_three_one()
    an_array = [:a, :b, :a, :b, :c, :b]
    expected_result = {:a => 2, :b => 3, :c => 1}
    actual_result = HashWithCount.new(an_array)
    pp actual_result
    assert_equal(expected_result, actual_result, 'hash with count empty should be empty')
  end
end
