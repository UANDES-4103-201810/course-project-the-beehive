json.extract! project, :id, :name, :user_id, :description, :goal, :actual, :date_limit, :funders, :created_at, :updated_at
json.url project_url(project, format: :json)
