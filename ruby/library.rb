#a program to build a library - that is, books organized by section
personal_library = {}

# code to add sections
def add_section(personal_library, section)
    personal_library[section] = []
end

# code to add books to a section
def add_book(personal_library, section, book)
  personal_library[section].push(book)
end

def print_personal_library(personal_library)
  personal_library.each {|section, books| puts "#{section.capitalize} contains #{books}"}
end

# user interface
puts "Welcome to library builder.  Please add a section."
input = gets.chomp

loop do
  add_section(personal_library, input)
  print_personal_library(personal_library)
  puts "Please add another section, or 'done' to exit."
  input = gets.chomp
  break if input == "done"
end

puts "Enter a section to add books to:"
input = gets.chomp
section = input
puts "Enter a book to add to #{section}"
book = gets.chomp

loop do
  add_book(personal_library, section, book)
  print_personal_library(personal_library)
  puts "Another book in the same section? ('done' to exit)"
  book = gets.chomp
  break if book == "done"
end
