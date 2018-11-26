class BookmarksController < ApplicationController
  def index
    @bookmarks = policy_scope(Bookmark)
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @video = Video.find(params[:video_id])
    @bookmark.save
    redirect_to video_path(@video)
    authorize @bookmark
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @video = @bookmark.video
    @bookmark.destroy
    redirect_to video_path(@video)
    authorize @bookmark
  end

  private

  def bookmarks_params
    params.permit(:user_id, :video_id)
  end
end
