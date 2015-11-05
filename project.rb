class Project
  attr_reader :funding, :target
  attr_accessor :name

  def initialize(name, target, initial=0)
    @name    = name
    @funding = initial
    @target  = target
  end

  def add_funds(amount)
    @funding += amount
    "#{@name} got some funds!"
  end

  def remove_funds(amount)
    @funding -= amount
    "#{@name} lost some funds!"
  end

  def funding_required
    @target - @funding
  end

  def to_s
    "#{@name} has $#{@funding.to_s} in funding towards a goal of $#{@target}"
  end
end
