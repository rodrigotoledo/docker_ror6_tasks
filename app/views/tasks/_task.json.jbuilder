json.extract! task, :id, :author_id, :title, :description, :completed_at, :created_at, :updated_at
json.url task_url(task, format: :json)
