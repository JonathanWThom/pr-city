class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @exercises = @user.exercises
    @exercise = Exercise.new(user_id: @user.id)

    ##it is getting this new exercise mixed up with @exercises, I think
  end

end
