require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
s1 = Store.new
s1.name = "Burnaby"
s1.annual_revenue = 300_000
s1.mens_apparel = true
s1.womens_apparel = true
s1.save

s2 = Store.new({
  name: "Richmond",
  annual_revenue: 1_260_000,
  mens_apparel: false,
  womens_apparel: true,
})
s2.save

s3 = Store.new({
  name: "Gastown",
  annual_revenue: 190_000,
  mens_apparel: true,
  womens_apparel: false,
})
s3.save

puts Store.count