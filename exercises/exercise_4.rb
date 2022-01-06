require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Borrowing and modifying the code from Exercise one, create 3 more stores:
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)
# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. 
# Assign the results to a variable @mens_stores.
# Loop through each of these stores and output their name and annual revenue on each line.
# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.


stores = Store.create(name: "Surrey", annual_revenue:224000, mens_apparel: false, womens_apparel: true )
stores = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false )
stores = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true )
puts "Mens"

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)

@mens_stores.each do |ms|
  puts "name: #{ms.name}"
  puts "Annual Revenue: #{ms.annual_revenue}"
end

puts "womens"

@womens_stores = Store.where(mens_apparel: false, womens_apparel: true).where("annual_revenue < ?", 10000000)

@womens_stores.each do |ws|
  puts "name: #{ws.name}"
  puts "Annual Revenue: #{ws.annual_revenue}"
end
