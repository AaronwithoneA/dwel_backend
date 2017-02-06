json.array! @todos do |todo|
  json.extract! todo, :description, :body, :category, :created_at, :id,
    :updated_at, :resolved
  json.comments do
    json.array! todo.comments do |comment|
      json.extract! comment, :username, :comment
    end
  end
end
