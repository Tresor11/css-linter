module Bot
  def self.chek1(str)
    if str.match(/.+\s{1}+{/)
      puts "too many white spaces on line #{$i}" if str.count(' ') > 3
    end
  end

  def self.chek2(str)
    if str.match(/\s+[a-z]+.+\s+[a-z]+;/)
      puts "sytanct correct at line #{$i}" if str.match(/[a-z]+.+:+\s+[a-z]+;$/)
      puts "incorect sythanx on line #{$i}" unless str.match(/[a-z]+.+:+\s+[a-z]+;$/)
    end
  end

  def run(num,arg)
    case num
    when 1
      Bot.chek1(arg)
    when 2
      Bot.chek2(arg)
    end
  end
end