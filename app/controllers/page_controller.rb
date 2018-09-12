class PageController < ApplicationController
  def home
  end

  def faq
  end

  def search
    if params[:select] == 'user'
      redirect_to "/#{params[:search]}"
    else
      redirect_to tag_path(params[:search])
    end
  end
end
