# accepts a string of ()[]{} only and evaluates whether each opening character is matched with a closing character(in proper sequence).

# "(" should have a matching ")"
# "[" should have a matching "]"
# "{" should have a matching "}"

pairs = {
  "(" => ")",
  "[" => "]",
  "{" => "}"
}

valid_example_string = "{()(){[][]}}"
split_string = valid_example_string.split("")

split_string.each do |character|
  p split_string.include?(pairs[character])
end
