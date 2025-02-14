a = 'Hello'
b = 'Hello'

puts 'Result of a.object_id == b.object_id:'
puts a.object_id == b.object_id # should be false because without frozen_string_literal, Ruby creates a new object for each string

puts "\nNo errors expected since strings are mutable:"
a << ' World'
puts a # => "Hello World" (The string is modified successfully)
