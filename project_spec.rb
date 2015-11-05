require_relative 'crowdfund'

describe Project do

  before do
    $stdout = StringIO.new
    @project = Project.new("Test Project", 500, 400)
  end

  it "has an initial target" do
    expect(@project.target).not_to be_nil
  end

  it "the funding outstanding" do
    expect(@project.funding_required).to eq(100)
  end

  it "increases funds by 25 when funds are added" do
    @project.add_funds(25)
    expect(@project.funding).to eq(425)
  end

  it "decreases funds by 15 when funds are removed" do
    @project.remove_funds(15)
    expect(@project.funding).to eq(385)
  end

  it "has a default value of 0 for funding amount" do
    @new_project = Project.new("Initial Funds", 100)
    expect(@new_project.funding).to eq(0)
  end
end
