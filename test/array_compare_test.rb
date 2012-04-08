#!/usr/bin/env ruby

require 'test/unit'
require_relative '../lib/array_compare'

class ArrayCompareTest < MiniTest::Unit::TestCase


  def test_empty()
    a = []
    b = []
    assert(a.is_equivalent?(b))
  end

  def test_equal() 
    a = [:a]
    b = [:a]
    assert(a.is_equivalent?(b))

    a = [:b, :a, :f]
    b = [:b, :a, :f]
    assert(a.is_equivalent?(b))
  end

  def test_different_duplicates()
    a = [:a, :a, :b]
    b = [:a, :b, :b]
    assert(!a.is_equivalent?(b))
  end

  def test_different_length()
    a = []
    b = [:b]
    assert(!a.is_equivalent?(b))

    a = [:a]
    b = []
    assert(!a.is_equivalent?(b))

    a = [1, -2, 3]
    b = [1, -2, 3, -4]
    assert(!a.is_equivalent?(b))
  end

  def test_multiple_types()
    a = [1, :a, :a, {}]
    b = [{}, :a, 1, :a]
    assert(a.is_equivalent?(b))
  end

  def test_multiple_types_false()
    a = [1, :a, :a, {}]
    b = [{}, :a, 2, :a]
    assert(!a.is_equivalent?(b))

    a = [1, :a, :a, {:c => 6}]
    b = [{}, :a, 1, :a]
    assert(!a.is_equivalent?(b))
  end

  def test_different_order()
    a = [:a, :a, :b]
    b = [:a, :b, :a]
    assert(a.is_equivalent?(b))
  end

end
