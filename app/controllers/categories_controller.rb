class CategoriesController < ApplicationController

  def index
    @category = Categories.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    category = Category.new(
      name: params["name"],
      )
    category.save
    redirect_to "/categories/#{category.id}"
  end

  def show
    category_id = params[:id]
    @category = Category.find_by(id: category_id)
    render "show.html.erb"
  end
end
