applicant = {
  name: "seth gerou",
  address: "14411 344th ave. n.e., duvall, wa, 98019",
  email: "seth.gerou@gmail.com",
  phone: "206-349-6449",
  fav_shade_of_blue: "navy",
  wallapaper_prefs: ["paisley", "chevrons"],
  ombre: "fierce"
}

applicant[:age] = 27
applicant[:hired] = true

var = applicant

p var[:age]

applicant[:name] = applicant[:ombre] + applicant[:email]
p applicant[:name]
