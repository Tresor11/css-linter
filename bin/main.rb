# frozen_string_literal: true

require_relative '../lib/lint'

file = './file.css'
f = File.open(file, 'r')
Error.new(f)
f.close
