class CoursesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @chef = Chef.find(params[:id])
    @course = Course.new(course_params)
    @course.chef = @chef
    if @course.save
      redirect_to new_course_path(@course)
    else
      render "courses/index"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def course_params
    params.require(:course).permit(:title, :difficulty, :duration, :category, :starts_at, :ends_at, :chef_id)
  end
end
