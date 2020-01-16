# frozen_string_literal: true

module Tests
  def self.new_line_check1(str)
    return unless str.match(/.+{/)

    !str.match(/.+{$/)
  end

  def self.space_check1(str)
    return unless str.match(/.+{/)

    !str.match(/.+\s{1}+{/)
  end

  def self.capital_letter_check(str)
    return unless str.match(/.+[a-z]+.+.+./)

    str.match(/[A-Z]/)
  end

  def self.space_check2(str)
    return unless str.match(/.+[a-z]+.+.+./)

    !str.match(/\s{2}+[a-z]+.+.+./)
  end

  def self.assignment_check(str)
    return unless str.match(/.+[a-z]+.+.+./)

    !str.match(/.+[a-z]+.+:+.+.+./)
  end

  def self.ending_line_check(str)
    return unless str.match(/.+[a-z]+.+.+./)

    !str.match(/[a-z]+.+.+\s+.+;$/)
  end

  def self.new_line_check2(str)
    return unless str.match(/.+[a-z]+.+.+./)

    !str.match(/[a-z]+.+:+\s+.+;\R/)
  end

  def self.single_character_check(str)
    return unless str.match(/}/)

    !str.match(/^}/)
  end

  def self.empty_line_check(str)
    return unless str.match(/}/)

    !str.match(/^}\R$/)
  end
end
