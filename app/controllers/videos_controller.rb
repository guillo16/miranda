class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_videos, only: [:show]

  def index
    @videos = policy_scope(Video)
    if @videos
      @videos
    else
      redirect_to subscriptions_new_path
    end
  end

  def show
    @bookmark = Bookmark.find_by(video_id: @video.id) || Bookmark.new
    @bookmarks = Bookmark.where(user_id: current_user.id).all
    @questions = @video.questions
    @answer = Answer.new
    @points
  end

  def set_videos
    @video = Video.find(params[:id])
    authorize @video
  end
end
