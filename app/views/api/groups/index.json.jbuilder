json.array! @groups do |group|

  json.extract! group, :id, :token, :address

  json.todos do
    json.array! group.todos do |todo|
      json.extract! todo, :description, :body, :category, :created_at, :id,
        :updated_at, :resolved
      json.comments do
        json.array! todo.comments do |comment|
          json.extract! comment, :username, :comment, :created_at
        end
      end
    end
  end
end
