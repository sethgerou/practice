# letter is capitalized and in the first half of alphabet - it becomes "bloop"

# letter is capitalized or the letter "e" - it becomes "buzz"

# if it's not a letter at all, it becomes "boing"

# otherwise it becomes "beep"

# "Happy Halloween" is the test example.

# (Business) Logic
def translate_character(char)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  halfway = alphabet.length / 2
  is_capitalized = (char.upcase == char)

  if alphabet.index(char.downcase) == nil
    "boing"
  elsif is_capitalized && alphabet.index(char.downcase) < halfway
    "bloop"
  elsif is_capitalized || char == "e"
    "buzz"
  else
    "beep"
  end
end

def translate_phrase(phrase)
  char_index=0
  response = ""
  while char_index < phrase.length
    response << translate_character(phrase[char_index])
    char_index+=1
  end
  response
end

# puts translate_phrase("Happy Halloween!") ==
# "bloopbeepbeepbeepbeepboingbloopbeepbeepbeepbeepbeepbuzzbuzzbeepboing"

# USER INTERFACE
puts "give me a phrase to translate to robot"
puts translate_phrase(gets.chomp)
puts "\a"
