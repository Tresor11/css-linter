# frozen_string_literal: true

require_relative '../lib/tests'

RSpec.describe Tests do
  describe '#Tests.new_line_check1(str)' do
    it 'check of the new line' do
      expect(Tests.new_line_check1('h1{')).to be_falsey
    end
  end
end
