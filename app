#Methods
def prompt()
  print "> "
end

def next_move()
  next_move=gets.chomp
end

def yes()
  puts "Wonderful. You have made a great decision and won't regret it"
end

def roll
  rand 2
end

def chance()
  puts "How about we flip a coin then?\n If you roll a 1, he's rejected.\n If you roll a 2, he's in."
  roll()

sleep 3

  puts 2 

puts "He's in! Luck is on everyone's side. Sam looks forward to meeting you at Flatiron and proving his worth. Have a great day."
end

def no()
  puts "That is a regrettable decision.\n Sam would be a valuable addition to the course.\n He has worked dilligently to learn coding basics and enjoys its very much. \n He often spends his evenings listening to music, coding, and enjoying adult beverages.\n" 

sleep 2

puts "Can I share some reasons why Sam is a good fit?"
    prompt; next_move=gets.chomp

    if next_move.include? "es" or next_move.include? "aybe"
      skills()
    else next_move.include? "no"
      chance()
  end
end 

def maybe()
  puts "Can I share some reasons why Sam is a good fit?"

  prompt; next_move=gets.chomp

  if next_move.include? "es"
      skills()
  
  elsif next_move.include? "no" 
     chance()
  end 
end

def skills()
  puts "Sam is a hardworker and extremely dedicated"
  puts "He is creative and thinks differently than most"
  puts "However that often makes him say odd things"
  puts "So besides coding, he'll be comedic relief"
  puts "Intentional or not"
  puts "What do you think now? Will you accept him?"
  
  prompt; next_move=gets.chomp

  if next_move.include? "es"
    yes()
  elsif next_move.include? "no" or next_move.include? "aybe"
     chance()
  end
end

#Game
def start()
  puts "You are considering admitting Sam Nagourney to the prestigious Flatiron School.\n While all my internal calculations suggest it's a brilliant idea,\n it is certainly a question worthy of exploration."

sleep 1

  puts "Will you accept Sam into the program? Yes, no, or maybe?"
      
    prompt;  next_move=gets.chomp

#Still determining how to make this case sensitive. In the meantime, I used include and just final letters to avoid the problem
if next_move.include? "es"
    yes()
  elsif next_move.include? "no" 
     no()
  elsif next_move.include? "aybe"
    maybe()
end
end

start()
