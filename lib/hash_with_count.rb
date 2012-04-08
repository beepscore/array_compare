#!/usr/bin/env ruby

require 'pp'

# HashWithCount converts an array into a hash.
# Each key is an object in the array.
# The value is the count of the number of times the key appeared in the array.
class HashWithCount < Hash

  def initialize(an_array = [])

    an_array.each do  |element|
      if self.has_key?(element)
        # increment count
        self[element] += 1
      else
        # key to hash with count of 1
        self[element] = 1
      end
    end
  end

end
