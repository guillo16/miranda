class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_videos, only: [:show]

  def index
    @videos = policy_scope(Video)
    if @videos
      if params["min_difficulty"]
        @videos = policy_scope(Video.where("difficulty BETWEEN ? AND ?", params["min_difficulty"], params["max_difficulty"]))
      elsif params["score"]
        vids = Video.find_by_sql("SELECT * FROM videos ORDER BY (difficulty - #{params["score"]}) ASC LIMIT 5")
        @videos = policy_scope(Video.where(id: vids.map(&:id)))
      elsif params["category"]
        @videos = policy_scope(Video.where(category: params["category"]))
      elsif params["region"]
        @videos = policy_scope(Video.where(region: params["region"]))
      else
        @videos
      end
    else
      redirect_to subscriptions_new_path
    end
  end

  def show
    @bookmark = Bookmark.find_by(video_id: @video.id, user_id: current_user.id) || Bookmark.new(video_id: @video.id, user_id: current_user.id, checked: false)
    @bookmark.save
    @bookmarks = Bookmark.where(user_id: current_user.id).all
    @questions = @video.questions
    @challenge = Challenge.new
    @answer = Answer.new
    @points
  end

  def set_videos
    @video = Video.find(params[:id])
    authorize @video
  end
end
