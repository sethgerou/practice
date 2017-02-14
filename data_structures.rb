
hash = {
  "Seattle" => "Mariners",
  "Oakland" => "Athletics",
  "Texas" => "Rangers",
  "Los Angeles" => "Angels",
  "Houston" => "Astros"
}

array = ["AL East", "AL Central", "AL West", "NL East", "NL Central", "NL West"]

hash_of_hashes = {"Albert Pujols" => {rbi: 45, hr: 11, b1: 5, b2: 23, b3: 4, ob: 0.434, avg: 0.224},
                   "Edgar Martinez" => {rbi: 24, hr: 7, b1: 3, b2: 55, b3: 5, ob: 0.334, avg: 0.324},
                   "Alex Rodriguez" => {rbi: 43, hr: 20, b1: 23, b2: 12, b3: 9, ob: 0.234, avg: 0.424},
                   "Ichiro Suzuki" => {rbi: 14, hr: 33, b1: 35, b2: 33, b3: 3, ob: 0.134, avg: 0.524},
                   "Manny Ramirez" => {rbi: 77, hr: 63, b1: 18, b2: 23, b3: 27, ob: 0.234, avg: 0.724},
}

array_of_hashes = [{rbi: 77, val: 12},
                  {hr: 63, val: 07},
                  {b1: 18, val: 32},
                  {b2: 23, val: 12},
                  {b3: 27, val: 44},
                  {ob: 0.234, val: 1},
                  {avg: 0.724, val: 87}
                  ]

hash_of_arrays = {"Albert Pujols" => [45, 11, 5, 23, 4, 0.434, 0.224],
                   "Edgar Martinez" => [24, 7, 3, 55, 5, 0.334, 0.324],
                   "Alex Rodriguez" => [43, 20, 23, 12, 9, 0.234, 0.424],
                   "Ichiro Suzuki" => [14, 33, 35, 33, 3, 0.134, 0.524],
                   "Manny Ramirez" => [77, 63, 18, 23, 27, 0.234, 0.724]
                 }

array_of_arrays = [["Seattle", "Oakland", "Texas", "Los Angeles","Houston"],
                    ["Boston", "Baltimore", "New York", "Toronto"],
                    ["Chicago", "Cleveland", "Atlanta", "St. Louis"]
                  ]

hash_of_array_of_hashes = {
                          inning1: [{"Ramirez" => "Out", "Boone" => "save"}, {"Suzuki" => "Single", "Boone" => "error"}, {"Rose" => "Out", "Boone" => "catch"}, {"Martinez" => "Out"}, "Boone" => "routine"],
                          inning2: [{"Smith" => "Home Run!"}, {"Ortiz" => "Double"}, {"Jeeter" => "Out"}, {"Block" => "Out"}, {"Jones" => "Out"}],
                          inning3: [{"Ramirez" => "Out"}, {"Suzuki" => "Single"}, {"Rose" => "Out"}, {"Martinez" => "Out"}],
                          inning4: [{"Smith" => "Home Run!"}, {"Ortiz" => "Double"}, {"Jeeter" => "Out"}, {"Block" => "Out"}, {"Jones" => "Out"}],
                          inning5: [{"Ramirez" => "Out"}, {"Suzuki" => "Single"}, {"Rose" => "Out"}, {"Martinez" => "Out"}],
                          inning6: [{"Smith" => "Home Run!"}, {"Ortiz" => "Double"}, {"Jeeter" => "Out"}, {"Block" => "Out"}, {"Jones" => "Out"}],
                          inning7: [{"Smith" => "Home Run!"}, {"Ortiz" => "Double"}, {"Jeeter" => "Out"}, {"Block" => "Out"}, {"Jones" => "Out"}],
                          inning8: [{"Ramirez" => "Out"}, {"Suzuki" => "Single"}, {"Rose" => "Out"}, {"Martinez" => "Out"}],
                          inning9: [{"Ramirez" => "Out"}, {"Suzuki" => "Single"}, {"Rose" => "Out"}, {"Martinez" => "Out"}],
}


# hash.each {|city, team| puts "the #{team} are from #{city}."}
#array.each {|division| puts division}

# hash of hashes
hash_of_hashes.each do |player, stats|
  puts "#{player} RBIs: #{stats[:rbi]} | AVG: #{stats[:avg]}"
end

p hash_of_hashes["Alex Rodriguez"]
p hash_of_hashes["Manny Ramirez"][:rbi]
p hash_of_hashes["Manny Ramirez"][:rbi] = 99
p hash_of_hashes["Mike Schmidt"] = {rbi: 43, hr: 20, b1: 23, b2: 12, b3: 9, ob: 0.234, avg: 0.424}

hash_of_hashes.each {|key, value| puts "#{key}"}

# array of hashes
p array_of_hashes[2][:b1]
p array_of_hashes.push({rsp: 0.344, wew: 322})
p array_of_hashes << {ume: 433, qas: 122}
p array_of_hashes << {:ret => 333, :ewe => 322}
p array_of_hashes[-1][:ret]

# hash of arrays
  hash_of_arrays.each {|player, stats| puts "#{player} Avg: #{stats[6]}, HR: #{stats[0]}"}
p hash_of_arrays["Edgar Martinez"][3]
p hash_of_arrays["Joe Schmoe"] = [24, 7, 3, 55, 5, 0.334, 0.324]
p hash_of_arrays["Edgar Martinez"].push(33)

array_of_arrays.each {|city| puts "#{city[-1]}"}

hash_of_array_of_hashes.each do |inning, results|
  puts "#{inning.capitalize} - Ramirez: #{results[0]["Ramirez"]}"
end

p hash["Seattle"]
hash["Phoenix"] = "Eagles"
p hash

p array
p array[0]
array.push("Canada")
p array.shift
p array[0]

p array_of_arrays[1][0]
p array_of_arrays[2].push("Denver")
p array_of_arrays.push(["Boston", "Baltimore", "New York", "Toronto"])

p hash_of_array_of_hashes[:inning4][1]["Ortiz"]
p hash_of_array_of_hashes[:inning10] = [{"Ramirez" => "Out"}, {"Suzuki" => "Single"}, {"Rose" => "Out"}, {"Martinez" => "Out"}]
p hash_of_array_of_hashes[:inning10].push({"Franklin" => "Safe"})
