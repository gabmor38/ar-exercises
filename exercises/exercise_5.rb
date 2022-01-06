require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales. 
# Hint: Chain together where and size (or count) Active Record methods.

@total_revenue = Store.sum(:annual_revenue)
@Avg_revenue = Store.average(:annual_revenue)
@total_sales = Store.where("annual_revenue > ?", 1000000).count

puts "Total revenue = #{@total_revenue}"
puts "Average revenue = #{@Avg_revenue}"
puts "Total Sales = #{@total_sales}"