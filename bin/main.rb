# frozen_string_literal: true

require_relative '../lib/lint'

file = './file.css'
f = File.open(file, 'r')
Test.new(f)
f.close
