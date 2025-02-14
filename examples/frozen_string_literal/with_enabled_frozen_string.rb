# frozen_string_literal: true

a = 'Hello'
b = 'Hello'

puts 'Result of a.object_id == b.object_id:'
puts a.object_id == b.object_id # should be true because Ruby reuses the object for identical strings

puts "\nThis raises the following error due to an attempt to modify the frozen string:"

# This will raise an error because strings are immutable with frozen_string_literal: true
a << ' World'
