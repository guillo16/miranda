class BookmarksController < ApplicationController
  def index
    @bookmarks = policy_scope(Bookmark)
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @video = Video.find(params[:video_id])
    @bookmark.save
    authorize @bookmark
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    @bookmark.checked = !@bookmark.checked
    @bookmark.save
    authorize @bookmark
  end

  private

  def bookmarks_params
    params.permit(:user_id, :video_id)
  end
end
