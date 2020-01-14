# frozen_string_literal: true

require_relative 'tests'

class Error
  include Tests
  attr_writer :errors
  attr_accessor :line
  def initialize(str)
    @temp = str
    @line = 1
    @errors = []
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
    @errors << "There should a new line after the assignment on line: #{@line}" if Tests.new_line_check2(str)
    @errors << "There should be a space before '{' on line: #{@line}" if Tests.space_check1(str)
    @errors << "The line should start with a space on line: #{@line}" if Tests.space_check2(str)
    @errors << "There should not be any capital letter on line: #{@line}" if Tests.capital_letter_check(str)
    @errors << "The correct assignment operator should be used on line: #{@line}" if Tests.assignment_check(str)
    @errors << "The line should end with a ';' on line: #{@line}" if Tests.ending_line_check(str)
    @errors << "The line should start with a '}' on line: #{@line}" if Tests.single_character_check(str)
    @errors << "There should be an empty new line after '}' on line : #{@line}" if Tests.empty_line_check(str)
  end
end
