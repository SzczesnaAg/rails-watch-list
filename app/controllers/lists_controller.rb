class ListsController < ApplicationController

  # A user can see all the lists
  def index
   @lists = List.all
  end

  # A user can see list(by id)
  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  # A user can create new list
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
