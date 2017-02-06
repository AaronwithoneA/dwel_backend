json.array! @groups do |group|
<<<<<<< HEAD

  json.extract! group, :id, :token
=======
  json.extract! group, :id, :token, :address
>>>>>>> c45db67288d2c6e40b868fe717073c2d0f890048
  json.todos do
    json.array! group.todos do |todo|
      json.extract! todo, :description, :body, :category, :created_at,
        :updated_at, :resolved
      json.comments do
        json.array! todo.comments do |comment|
          json.extract! comment, :username, :comment, :created_at
        end
      end
    end
  end
end
