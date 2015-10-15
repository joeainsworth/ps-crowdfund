require_relative 'project'
require_relative 'fund_request'

xyz = Project.new("XYZ", 475, 500)
ted = Project.new("TED", 995, 1000)
sam = Project.new("SAM", 500, 550)

vc_projects = ProjectCollection.new("VC Friendly")
vc_projects.projects << xyz
vc_projects.projects << ted
vc_projects.projects << sam

vc_projects.request_funding
