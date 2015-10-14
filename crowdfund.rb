class Project
  attr_reader :current_funding, :funding_target
  attr_accessor :name

  def initialize(name, initial=0, target)
    @name            = name
    @current_funding = initial
    @funding_target  = target
  end

  def add_funds(amount)
    @current_funding += amount
    "#{@name} got some funds!"
  end

  def remove_funds(amount)
    @current_funding -= amount
    "#{@name} lost some funds!"
  end

  def funding_required
    @funding_target - @current_funding
  end

  def project_status
    "Project #{@name} has $#{@current_funding.to_s} in funding towards a goal of $#{@funding_target.to_s}"
  end
end


puts "There are a total of #{projects.count} projects."


projects.each do |project|
  puts "#{project.project_status}"
end

puts "*" * 10

projects.each do |project|
  puts project.add_funds(25)
  puts "#{project.project_status}"
end

puts "*" * 10

projects.delete_if {|project| project.funding_required > project.current_funding }
puts "There are a total of #{projects.count} projects."
projects.each do |project|
  puts "#{project.project_status}"
end
