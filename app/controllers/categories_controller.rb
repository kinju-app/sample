class CategoriesController < ApplicationController

	before_action :require_user, only: [:new, :create]

	def index
		@categories = Category.paginate(page: params[:page], per_page: 3)
	end

	def new
	 	@category = Category.new
	end

	def create
		@category = Category.new(category_params)
		if @category.save
			redirect_to categories_path
		else
			render 'new'
		end
	end

	def show
		@category = Category.find(params[:id])
	end


	private 

	def category_params
		params.require(:category).permit(:name)
	end	

end
