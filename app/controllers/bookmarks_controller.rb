class BookmarksController < ApplicationController
  def new
    @list =List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list =List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @review.list = @list

    redirect_to

  end

  def delete
    @bookmark =Bookmark.find(params[:bookmark_id])

  end

  private

  def bookmark_params

  end


end
