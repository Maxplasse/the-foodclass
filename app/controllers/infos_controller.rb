class InfosController < ApplicationController
  def show
    @user = current_user
    authorize @user
  end
end
