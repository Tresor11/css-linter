# frozen_string_literal: true

module Bot
  def self.chek1(str)
    if str.match(/.+{/)
      puts "there should be a new line after '{' on line #{$i}" unless str.match(/.+{$/)
      puts "there should be a white space before '{' on line #{$i}" unless str.match(/.+\s{1}+{/)
    end
  end

  def self.chek2(str)
    if str.match(/.+[a-z]+.+.+./)
      puts "there should not be any capital letter on line #{$i}" if str.match(/[A-Z]/)
      puts "the line should start with a white space on line #{$i}" unless str.match(/\s{2}+[a-z]+.+.+./)
      puts "the value should be asigned with ':' on line #{$i}" unless str.match(/.+[a-z]+.+:+.+.+./)
      puts "the line shoud end with a ';' on line #{$i}" unless str.match(/[a-z]+.+.+\s+.+;$/)
      puts "there should be a new line after ';' on line #{$i}" unless str.match(/[a-z]+.+:+\s+.+;\R/)
    end
  end

  def self.chek3(str)
    if str.match(/}/)
      puts "there should not be anything before '}' on line #{$i}" unless str.match(/^}/)
      puts "there should be a new line after '}' on line #{$i}" unless str.match(/^}\R$/)
    end
  end

  def run(num, arg)
    case num
    when 1
      Bot.chek1(arg)
    when 2
      Bot.chek2(arg)
    when 3
      Bot.chek3(arg)
    end
  end
end
