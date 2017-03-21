class ExercisesController < ApplicationController
  ##before action

  def create
    @user = User.find(params[:user_id])
    @exercise = @user.exercises.new(exercise_params)
    if @exercise.save
      flash[:notice] = "PR Added!"
      redirect_to user_path(@user)
    else
      ## more descriptive
      flash[:notice] = "Something went wrong"
      redirect_to user_path(@user)
    end
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :record, :unit, :date)
  end
end
