# frozen_string_literal: true

require_relative 'tests'
include Tests

class Error
  attr_writer :errors
  attr_accessor :line
  def initialize(str)
    @temp = str
    @line = 1
    @errors = []
    run
    show
  end

  def run
    @temp.each_line do |x|
      test_cases(x)
      @line += 1
    end
  end

  def show
    @errors.each do |x|
      puts x
    end
  end

  private

  def test_cases(str)
    @errors << "There should be a new line after '{' on line: #{@line}" if Tests.new_line_check1(str)
    @errors << "There shoul a space before '{' on line: #{@line}" if Tests.space_check1(str)
    @errors << "The line should start with a sapce on line: #{@line}" if Tests.space_check2(str)
    @errors << "The correct assignment operator should be used on line: #{@line}" if Tests.assignment_check(str)
    @errors << "The line should end with a ';' on line: #{@line}" if Tests.ending_line_check(str)
  end
end
