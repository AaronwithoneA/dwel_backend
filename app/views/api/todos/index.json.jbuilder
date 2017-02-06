json.array! @todos do |todo|
  json.extract! todo, :description, :body, :category, :created_at,
    :updated_at, :resolved
  json.comments do
    json.array! todo.comments do |comment|
      json.extract! comment, :user, :comment, :created_at
    end
  end
end
