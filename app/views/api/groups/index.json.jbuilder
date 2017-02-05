@groups.each do |group|
  json.set! group.id do
    json.extract! group, :id, :tenant, :landlord, :token
    json.todos do
      json.array! group.todos do |todo|
        json.extract! todo, :description, :body, :category, :created_at,
          :updated_at, :resolved
        json.array! todo.comments do |comment|
          json.extract! comment, :user, :comment, :created_at
        end
      end
    end
  end
end
