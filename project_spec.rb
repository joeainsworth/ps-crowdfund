require_relative 'crowdfund'

describe Project do

  before do
    @project = Project.new("Test Project", 5000)
  end

  describe "has an initial target funding amount" do
    expect(@project.target).not_to be_empty
  end
end
