# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Jim", 100)
l2 = Lifter.new("Matt", 200) 
l3 = Lifter.new("James", 300)

g1 = Gym.new("Running")
g2 = Gym.new("Power")
g3 = Gym.new("Fittness")

m1 = Membership.new(400, l1, g2)
m2 = Membership.new(500, l3, g3)
m3 = Membership.new(100, l1, g2)
m4 = Membership.new(200, l3, g2)
m5 = Membership.new(300, l2, g1)
m6 = Membership.new(600, l2, g1)


binding.pry

puts "Gains!"
