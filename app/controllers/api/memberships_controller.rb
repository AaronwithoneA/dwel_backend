class Api::MembershipsController < ApplicationController
  def create
    membership = Membership.new(params[:group_id])
    membership.user_id = current_user.id
    if membership.save
      render 'api/groups/index'
    else
      render json: membership.errors.full_messages, status: 422
    end
  end
end
