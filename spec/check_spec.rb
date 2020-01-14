# frozen_string_literal: true

require './lib/tests.rb'

RSpec.describe Tests do
  describe '#Tests.new_line_check1(str)' do
    it "return false user if there is not a new line after '{' " do
      expect(Tests.new_line_check1('h1 {')).to be_falsey
    end
  end

  describe '#Tests.new_line_check2(str)' do
    it 'return false if there is not a new line after a line in the block ' do
      expect(Tests.new_line_check1('font-size: 38px;color')).to be_falsey
    end
  end

  describe '#Tests.space_check1(str)' do
    it "return false if there is not a space before '{' " do
      expect(Tests.space_check1('h2, {')).to be_falsey
    end
  end

  describe '#Tests.assignment_check(str)' do
    it 'return false if the correct assignment operator is not used' do
      expect(Tests.assignment_check('color := #6f23ff;')).to be_falsey
    end
  end

  describe '#Tests.space_check2(str)' do
    it 'return false if the line does not start with a space' do
      expect(Tests.space_check2(' color : #6f23ff;')).to be_truthy
    end
  end

  describe '#Tests.ending_line_check(str)' do
    it "return false if the line does not end with ';' " do
      expect(Tests.ending_line_check(' color : #6f23ff .;')).to be_falsey
    end
  end

  describe '#Tests.single_character_check(str)' do
    it "return true if there is not a single craractre on the last line ';' " do
      expect(Tests.single_character_check('} ')).to be_falsey
    end
  end
end
