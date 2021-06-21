class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all
    @@all 
  end 

  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def lifters
    memberships.map { |membership| membership.lifter }
  end

  def combined_lift_total
    #binding.pry
    lifters.reduce(0) do |sum, lifter| 
      sum + lifter.lift_total 
    end
  end

end
