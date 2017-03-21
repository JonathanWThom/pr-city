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

  def show
    @user = User.find(params[:user_id])
    @exercise = Exercise.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @exercise = Exercise.find(params[:id])
    if @exercise.update(exercise_params)
      flash[:notice] = "PR Updated"
      redirect_to user_exercise_path(@user, @exercise)
    else
      flash[:notice] = "Something went wrong"
      ## render errors instead
      redirect_to user_exercise_path(@user, @exercise)
    end
  end

  private
  def exercise_params
    params.require(:exercise).permit(:name, :record, :unit, :date)
  end
end
