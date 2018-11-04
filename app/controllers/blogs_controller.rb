class BlogsController < ApplicationController

  before_action :find_blog, only: [:edit, :update, :show, :destroy, :toggle_status]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:success] = "Your blog post has been posed"
      redirect_to blog_path(@blog)
    else
      flash[:fail] = "Oops, something wrong with this entry."
      render :new
    end
  end

  def edit

  end

  def update
    if @blog.update
      flash[:success] = "Your blog post has been updated!"
      redirect_to blog_path(@blog)
    else
      flash[:fail] = "Oops, something wrong with this entry."
      render :edit
    end
  end

  def show
  end

  def destroy
    flash[:success] = "Your post has been deleted!"
    @blog.destroy
    redirect_to blogs_path
  end

  def toggle_status
    if @blog.published?
      @blog.draft!
    else
      @blog.draft?
      @blog.published!
    end
    redirect_to blogs_path
  end


  private

  def find_blog
    @blog = Blog.friendly.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :body, :status)
  end
end
