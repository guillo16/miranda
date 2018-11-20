class VideosController < ApplicationController
  def index
    @videos = policy_scope(Video).order(created_at: :desc)
  end

  def show
  end
end
