class ListsController < ApplicationController

  # A user can see all the lists
  def index
   @lists = List.all
  end

  # A user can see list(by id)
  def show
    @list = List.find(params[:id])
  end

  # A user can create new list
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)


    if @list.save!
      redirect_to lists_path
    else
      render "new"
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
