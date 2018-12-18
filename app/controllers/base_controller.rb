# frozen_string_literal: true

# Route methods for home page and other misc routes
class BaseController < ApplicationController
  def index; end

  def search
    search_string = params[:q]
    cookies[:search_string] = search_string
    @users = User.search_users(search_string)
    respond_to do |format|
      format.html { render :search_results }
      format.json { render json: @users, status: 200 }
    end
  end

  def search_results
    search_string = cookies[:search_string]
    if !search_string.blank?
      @users = User.search_users(search_string)
      render :search_results
    else
      redirect_to root_path
    end
  end
end
