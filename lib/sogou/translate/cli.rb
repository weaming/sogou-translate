require 'thor'
require "sogou/translate/get"

def red(text)
    code = 31
    return "\e[#{code}m#{text}\e[0m"
end


def green(text)
    code = 32
    return "\e[#{code}m#{text}\e[0m"
end


module Sogou
    module Translate
        class CLI < Thor
            desc "trans TEXT", "translate TEXT"
            def translate(text='文章本天成，妙手偶得之')
                js = Sogou::Translate.translate(text)
                puts "  #{green("From")}: #{js['translate']['from']}"
                puts "    #{green("To")}: #{js['translate']['to']}"
                puts "  #{green("Text")}: #{js['translate']['text']}"
                puts "#{green("Result")}: #{js['translate']['dit']}"
            end
        end
    end
end
