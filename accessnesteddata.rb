require_relative 'misc_data'

LANGUAGES = ["python" => "version 3.1.4",
            "ruby" => "version 2.2.1",
            "go" => "version 2.1.1",
            "rust" => "ver. 3.4.3"] # array of hashes

@methods = [
  ["one", "two", "three"],
  ["four","five","six"],
  ["seven","eight","nine"]
  ] # array of arrays

HOUSE_KEYS = {
    "Skeleton Key" => {origin: "France", first_used: 1770},
    "Master Key" => {origin: "Mars", first_used: 1932},
    "Skate Key" => {origin: "Venice Beach", first_used: 1957},
    "Map Key" => {origin: "Pirates", first_used: 1454},
    "\"Any\" Key" => {origin: "Nerds", first_used: 1952},
  } # hash of hashes

def build_reading_list(books, author)
  reading_list = []
  books.each do |book|
    reading_list.push(book + " by " + author)
  end
  reading_list
end

def get_language_versions(language, version)
  language_versions = []
end

AUT.each do |author, books|
  puts build_reading_list(books, author)
end # expect this to print three arrays, each formatted listing book by author.

p LANGUAGES[0]["python"]

puts @methods[1][2].upcase

@methods.each {|array| puts array}

p HOUSE_KEYS["Skeleton Key"][:origin], HOUSE_KEYS["Skeleton Key"][:first_used]
HOUSE_KEYS["Other Key"] = {origin: "seattle", first_used: 2017}
p HOUSE_KEYS["Other Key"][:first_used]
HOUSE_KEYS["Other Key"][:first_used] = 2011
p HOUSE_KEYS["Other Key"][:first_used]
