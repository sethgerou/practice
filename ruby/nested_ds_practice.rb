house = {
  "Living Room" => ["sofa", "chandalier"],
  "Kitchen" => ["refrigerator", "table"],
  "Bedroom 1" => [],
  "Bedroom 2" => ["picture", "end table", "lamp", "bed"],
  "Bathroom" => ["toilet", "mirror", "sink", "shower"],
  "Attic" => []
}

house["Kitchen"].each {|p| puts p}
house["Kitchen"].include?("table")
puts house["Kitchen"].last

house["Attic"] << "ghost"
puts house["Attic"]
house["Attic"].push("pacman")
puts house["Attic"]
house["Living Room"].push("cat")
house["Living Room"] << "cat"
puts house["Living Room"]
p house["Living Room"]
house["Living Room"][2] = "dog"
p house["Living Room"]
