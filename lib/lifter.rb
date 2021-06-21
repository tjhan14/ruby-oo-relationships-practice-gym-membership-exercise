class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all
    @@all 
  end 

  def memberships 
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    memberships.map { |membership| membership.gym }
  end

  def self.average_lift_total
    #binding.pry
    total_number = self.all.sum { |lifter| lifter.lift_total }
    total_number / self.all.length
  end

  def total_cost
    self.memberships.sum { |membership| membership.cost }
  end

  def new_lifter_in_gym(gym, cost)
    binding.pry
    t1 = self.memberships.select { |membership| membership.gym == gym}
    t2 = t1.select { |membership| membership.cost == cost}
    t2.map { |membership| membership.lifter }
  end

end
