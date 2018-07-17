require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

s4 = Store.new({
  name: "Surrey",
  annual_revenue: 224_000,
  mens_apparel: false,
  womens_apparel: true,
})
s4.save

s5 = Store.new({
  name: "Whistler",
  annual_revenue: 1_900_000,
  mens_apparel: true,
  womens_apparel: false,
})
s5.save

s6 = Store.new({
  name: "Yaletown",
  annual_revenue: 430_000,
  mens_apparel: true,
  womens_apparel: true,
})
s6.save

puts "*****************Men's stores*******************"

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do | elem |
  puts "#{elem.name} #{elem.annual_revenue}"
end

puts "*****************Women's stores < $1,000,000*******************"

@womens_stores = Store.where({womens_apparel: true, annual_revenue: 0...1_000_000})
@mens_stores.each do | elem |
  puts "#{elem.name} #{elem.annual_revenue}"
end
