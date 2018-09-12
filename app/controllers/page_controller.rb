class PageController < ApplicationController
  def home
  end

  def faq
  end
  
  def dashboard
    @posts = Post.all.order("created_at DESC")
  end
  def search
    if params[:select] == 'user'
      redirect_to "/#{params[:search]}"
    else
      redirect_to tag_path(params[:search])
    end
  end
end
