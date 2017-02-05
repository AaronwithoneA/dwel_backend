class Api::TodosController < ApplicationController
  def index
    @todos = Todo.where(group_id: params[:groupId])
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.group_id = current_user.group.id
    if @todo.save
      render "api/users/show"
    else
      render json: @todo.errors.full_messages, status: 422
    end
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(resolved: true)
      render "api/users/show"
    else
      render json: @todo.errors.full_messages, status: 422
    end
  end

  def todo_params
    params.require(:todo).permit(:description, :body, :type, :groupId)
  end
end
