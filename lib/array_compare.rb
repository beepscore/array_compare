#!/usr/bin/env ruby

require_relative 'hash_with_count'
require 'pp'

class Array

  def is_equivalent?(an_array)
    is_equivalent = false
    if ( (self.length == an_array.length) &&
        (HashWithCount.new(self) == HashWithCount.new(an_array)) )
      is_equivalent = true
    end
    is_equivalent
  end

end
