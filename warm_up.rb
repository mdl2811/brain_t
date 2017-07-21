require 'pry'

class Greeting
  def greeting
    puts 'Letters Menu'
    puts '1) Your Input'
    puts '2) Exit'

    user_letter = gets.downcase.chomp
    answers(user_letter)
  end

class Answers
  def answers(user_letter)
  if user_letter == "1"
    add_letter
  elsif user_letter == "2"
    good_bye
  else
    error
  end
end

def add_letter
  str = {}
  arr = str.split
  counter = 0
  most_repeat_letter_word = nil

 arr.each do |w|
    candidate = w.length - w.split('').uniq.length
    if candidate  > counter
      most_repeat_letter_word = w
      counter = candidate
    end
  end
  puts most_repeat_letter_word
end
greeting

def error
  puts "Not Valid, Try Again"
  greeting
end


def good_bye
  puts "Thanks for playing....... Goodbye!"
  exit
end
