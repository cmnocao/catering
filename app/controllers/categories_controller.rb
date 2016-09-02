class CategoriesController < ApplicationController

  before_filter :load_categorizable
  before_action :set_categories, only: [:show, :edit, :update]
  
  def index
    @categories = @categorizable.categories
  end

  def new
    @categories = @categorizable.categories.new
  end

  def show
  end

  def edit
  end

  def create
    @categories = @categorizable.categories.new(categories_params)

    if @categories.save
      redirect_to [@categorizable, :categories], notice: "Category created!"
    else
      render 'new'
    end
  end

  def update
    if @categories.update(categories_params)
      redirect_to [@categorizable, :categories], notice: 'Category was successfully updated.'
    else
      render :edit
    end
  end
  
  private

    def set_categories
      @categories = Category.find(params[:id])
    end

    def load_categorizable
      resource, id = request.path.split('/')[1,2]
      @categorizable = resource.singularize.classify.constantize.find(id)
    end

    def categories_params
      params.require(:categories).permit(:name)
    end

end