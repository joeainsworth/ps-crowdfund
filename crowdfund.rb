require_relative 'project'
require_relative 'project_collection'
require_relative 'fund_request'

xyz = Project.new("XYZ", 500, 475)
ted = Project.new("TED", 1000, 995)
sam = Project.new("SAM", 550, 500)

vc_projects = ProjectCollection.new("VC Friendly")
vc_projects.projects << xyz
vc_projects.projects << ted
vc_projects.projects << sam

vc_projects.request_funding
