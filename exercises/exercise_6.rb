require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1 = Store.find 1
@store2 = Store.find 2

@store1.employees.create(first_name: "Brett", last_name: "Hitman", hourly_rate: 18)
@store1.employees.create(first_name: "The", last_name: "Undertaker", hourly_rate: 60)
@store1.employees.create(first_name: "Rick", last_name: "Flair", hourly_rate: 60)
@store2.employees.create(first_name: "Man", last_name: "Kind", hourly_rate: 60)
@store2.employees.create(first_name: "Hulk", last_name: "Hogan", hourly_rate: 60)

Employee.where(store_id: 1).each do | elem |
  puts "#{elem.first_name} #{elem.last_name}"
end