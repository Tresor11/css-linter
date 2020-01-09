# frozen_string_literal: true
require_relative 'module'
include Bot

class Test
  attr_reader :errors
  attr_accessor :i
  def initialize(str)
    @temp = str
    $i= 1
    checks
  end

  def engine(code)
    for i in (1..5) do
    Bot.run(i,code)end
  end

  def checks
    @temp.each_line do |x|
      engine(x)
      $i += 1
    end
  end
end

file = './file.css'
f = File.open(file, 'r')
Test.new(f)
# puts f.count
# f.each_line { |line|
#   Test.new(line)
# }
# f.close
