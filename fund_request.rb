class FundRequest
  attr_accessor :projects
  attr_reader :name

  def initialize(name)
    @name = name
    @projects = []
  end

  def request_funding
    puts "In the #{@name} project collection there are #{@projects.size} projects that you could fund:"
    @projects.each do |project|
      puts project
    end
    @projects.each do |project|
      project.add_funds(50)
      project.remove_funds(25)
      project.add_funds(5)
      puts project
    end
  end
end
