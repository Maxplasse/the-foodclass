class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = policy_scope(Post).order(posted_at: :desc)
  end
  def new
  end
  def create
  end
  def destroy
  end
end
