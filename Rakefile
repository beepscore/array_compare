#!/usr/bin/env ruby

require 'rake'
require 'rake/testtask'
require_relative 'test/array_compare_test'
require_relative 'test/hash_with_count_test'

# http://rake.rubyforge.org/
# http://stackoverflow.com/questions/6715158/rails-how-to-set-up-minitest
# http://stackoverflow.com/questions/4788288/how-to-run-all-the-tests-with-minitest

# To run default task, in Terminal enter 'rake default' or simply 'rake'
# here task :default is dependent on task :test
# task default will run unit tests first
task :default do
end

# makes a task 'test' to run unit tests
Rake::TestTask.new do |t|
  t.pattern = 'test/*_test.rb'
  t.verbose = true
end
