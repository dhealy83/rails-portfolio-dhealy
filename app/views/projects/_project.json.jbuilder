json.extract! project, :id, :title, :description, :repo_link, :deployed_link, :created_at, :updated_at
json.url project_url(project, format: :json)
