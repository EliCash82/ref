
# Anderson's Ruby Document

# This is a living document made for personal reference purposes.  The purpose is to practice writing Ruby in a notebook.
# I'll be parsing all this MD to a PDF for printing purposes with gimli

# ---

## Branching:

# puts 'How about you say something?'
# something = gets.chomp
# puts something + ', yes, that definitely is something.'

# if something == 'cheeseburger'
#   puts 'God I fuggin LOVE cheeseburgers bro!'
# end

# puts "What did you think of the series finale of HIMYM?"
# thoughts = gets.chomp

# if thoughts == 'good'
#   puts "Really?  you are an idiot."
# elsif thoughts == 'okay'
#   puts "No, it was shit."
# elsif thoughts == 'bad'
#   puts "You are correct sir."
# elsif thoughts == "you cannot handle the truth"
#   puts "Why do you say that fool?"
#   reply = gets.chomp
#  
#   if reply == 'because'
#     puts "NOOOOOOO!"
#   else
#     puts "Yes."
#   end
# else
#   puts "Whaaaaa?"
# end

# ---

# Looping

# input = ''
#
# while input != 'bye'
#   puts input
#   input = gets.chomp
# end
# 
# puts 'Thank you, come again.'

# while true
#   input = gets.chomp
#   puts input
#   if input == 'bye'
#     break
#   end
# end
#
# puts 'The hell?'

#-----

# puts "Hello, what is your name?"
# name = gets.chomp
# puts 'Hello, ' + name + '.'
#
# if name == 'Anderson' || name == 'Craig'
#   puts 'You work for BLSCI!'
# end

# ---

# while true
#   puts 'What would you like to ask C to do?'
#   request = gets.chomp
#
#   puts 'You say, "C, please ' + request + '"'
# 
#   puts 'C\'s response:'
#   puts '"C '    + request + '."'
#   puts '"Papa ' + request + ', too."'
#   puts '"Mama ' + request + ', too."'
#   puts '"Ruby ' + request + ', too."'
#   puts '"Nono ' + request + ', too."'
#   puts '"Holt ' + request + ', too."'
#
#   if request == 'stop'
#     break
#   end
# end

# ---

## Arrays

# books = ['The Great Gatsby', 'The Nick Adams Stories', 'Understanding Media', '2030', 'Do Androids Dream of Electric Sheep?', 'J.R.']

# puts books
# puts 
# puts books[0]
# puts books[1]
# puts books[2]
# puts books[3]
# puts books[4]
# puts books[5]

# shows = ['HIMYM', 'David the Gnome', 'Happy Days']

# shows.each do |tv|
#   puts 'I love ' + tv + '!'
#   puts 'Don\'t you?'
# end
#
# puts 'And I fuggin HATE The New Girl!'
# puts '<applause>'

# games = ['Donkey Kong', 'Super Mario', 'Battletoads']

# puts games
# puts
# puts games.to_s
# puts
# puts games.join(', ')
# puts
# puts games.join(' :) ') + ' 8)'

#  40.times do
#   name = ["Anderson", "Evans"]
#   puts name.join
#  end

# novellas = []
# novellas.push 'The End of The Road'
# novellas.push 'The Grand Inquisitor'

# puts novellas[0]
# puts novellas.last
# puts novellas.length

# puts novellas.pop
# puts novellas
# puts novellas.length

# Exercises

# girls = ['Zelda', 'Julia', 'Katie', 'Megan']
# puts girls.sort

# puts "How many pounds?"
# pounds = gets.chomp.to_s + " "
# puts "How many lira?"
# lira = gets.chomp.to_s + " " 
# puts "How many dollars?"
# dollars = gets.chomp.to_s + " "

# puts pounds
# puts lira
# puts dollars

# bank = [pounds, lira, dollars]
# banks = bank.join
# good_bank = bank.sort
# puts 'Soon you shall aquire ' + banks + 'until you are rich!'
# dang = bank.sort.join(', ')
#puts "You have a ton of" + dang

# def double_this num
#   num_times_2 = num*2
#   puts num.to_s+' doubled is '+num_times_2.to_s
# end

# double_this 22

#recursion: writing a method that calls itself

# def ask_recursively question
#   puts question
#   reply = gets.chomp.downcase

#   if reply    == 'yes'
#     true
#   elsif reply == 'no'
#     false
#   else
#     puts 'Please answer "yes" or "no"'
#     ask_recursively question
#   end
# end

# ask_recursively 'Do you wet yourself?'

# def factorial num
#   if num < 0
#     return "You can't take the factorial of a negative number."
#   end

#   if num <= 1
#     1
#   else
#     num * factorial(num-1)
#   end
# end

# puts factorial(3)
# puts factorial(30)
# puts factorial(-2)

M = 'land'
o = 'water'

world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]

def continent_size world, x, y
  if world[y][x] != 'land'
    return 0
  end

  size = 1
  world[y][x] = 'counted land'

  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y )
  size = size + continent_size(world, x+1, y )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x , y+1)
  size = size + continent_size(world, x+1, y+1)

  size
end

puts continent_size(world, 5, 5)



 
