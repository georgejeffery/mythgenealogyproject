json.extract! person, :id, :name, :created_at, :updated_at, :gender, :parents, :children, :relationships
json.url person_url(person, format: :json)
