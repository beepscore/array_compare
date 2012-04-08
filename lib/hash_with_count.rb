#!/usr/bin/env ruby

require 'pp'

# HashWithCount converts an array into a hash.
# Each key in the hash corresponds to one element (or more than one equal elements) in the array.
# For each key, the value is the number of times the element appears in the array.
# Note: If two arrays have the same elements in different order, their HashWithCounts are equal.
class HashWithCount < Hash

  def initialize(an_array = [])

    an_array.each do  |element|

      if self.has_key?(element)
        # the hash has a key for this element, increment the key's count value
        self[element] += 1
      else
        # the hash doesn't have a key for this element, add it with count of 1
        self[element] = 1
      end

    end
  end

end
