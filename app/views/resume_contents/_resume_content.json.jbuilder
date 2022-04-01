json.extract! resume_content, :id, :title, :description, :type, :date, :created_at, :updated_at
json.url resume_content_url(resume_content, format: :json)
