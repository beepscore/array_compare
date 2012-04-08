#!/usr/bin/env ruby

require_relative 'hash_with_count'
require 'pp'

class Array

  # is_equivalent? returns true if the argument array has the same elements as self, independent of order.
  # Note either or both arrays may contain duplicate elements.
  def is_equivalent?(an_array)
    is_equivalent = false
    if ( (self.length == an_array.length) &&
        (HashWithCount.new(self) == HashWithCount.new(an_array)) )
      is_equivalent = true
    end
    is_equivalent
  end

end
