class BlogPostsController < ApplicationController
  def index
    @blogposts = BlogPost.all
  end

  def show
    @blogpost = BlogPost.find(params[:id])
  end

  def new
    @blogpost =BlogPost.new
  end

  def create
    @blogpost = BlogPost.new (blogpost_params)
    if @blogpost.save
      redirect_to show_blog_post_path(@blogpost.id)
    else
      render :new, status: :im_a_teapot
    end
  end

  private
    def blogpost_params
        params.require(:blog_post).permit(:title, :content)
    end

end
