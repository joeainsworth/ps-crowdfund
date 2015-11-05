class ProjectCollection
  attr_reader :name
  attr_accessor :projects

  def initialize(name)
    @name = name
    @projects = []
  end

  def request_funding
    @projects.each do |project|
      puts project
      project.add_funds(50)
      project.remove_funds(15)
      puts project
    end
  end
end
