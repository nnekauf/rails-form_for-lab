class SchoolClassesController < ApplicationController
    def index
		@schoolclasses = SchoolClass.all
	end

	def show
		@schoolclasses = SchoolClass.find(params[:id])
	end

	def new
		@schoolclasses = SchoolClass.new
	end

	def create
	  @schoolclasses = SchoolClass.new
	  @schoolclasses.title = params[:student_class][:title]
	  @schoolclasses.room_number = params[:student_class][:room_number]
	  @schoolclasses.save
	  redirect_to schoolclass_path(@schoolclasses)
	end

	def edit
		@schoolclasses = SchoolClass.find(params[:id])
	end

	def update
	  @schoolclasses = SchoolClass.find(params[:id])
	  @schoolclasses.update(params.require(:schoolclass).permit(:title, :room_number)) 
	  redirect_to schoolclass_path(@schoolclasses)
	end
end