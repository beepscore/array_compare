#!/usr/bin/env ruby

require 'test/unit'
require_relative '../lib/array_compare'

class ArrayCompareTest < MiniTest::Unit::TestCase


  def test_array_compare()
    a = []
    b = []
    assert(a.is_equivalent?(b))
    
    a = [:a]
    b = [:a]
    assert(a.is_equivalent?(b))

    a = [:b, :a]
    b = [:b, :a]
    assert(a.is_equivalent?(b))

    a = [:a, :a, :b]
    b = [:a, :b, :a]
    assert(a.is_equivalent?(b))
  end


  def test_array_compare_false()
    a = []
    b = [:b]
    assert(!a.is_equivalent?(b))
    
    a = [:a]
    b = []
    assert(!a.is_equivalent?(b))

    a = [:a, :a, :b]
    b = [:a, :b, :b]
    assert(!a.is_equivalent?(b))

  end

end
