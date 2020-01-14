# frozen_string_literal: true

require_relative '../lib/error'
puts "     welcome to the Css linter please enter the path to your css file"
file = gets.chomp
f = File.open(file, 'r')
start=Error.new(f)
start.run
start.show
f.close
