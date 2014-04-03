
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

shows = ['HIMYM', 'David the Gnome', 'Happy Days']

shows.each do |tv|
  puts 'I love ' + tv + '!'
  puts 'Don\'t you?'
end

puts 'And I fuggin HATE The New Girl!'
puts '<applause>'

