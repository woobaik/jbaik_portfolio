class PortfoliosController < ApplicationController

  before_action :find_portfolio, only: [:edit, :update, :show, :destroy]

  def index
    @portfolios = Portfolio.all.order("created_at DESC")
  end

  def new
    @portfolio = Portfolio.new
    2.times { @portfolio.technologies.build}
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      flash[:success] = "Your portfolio post has been posed!"
      redirect_to portfolio_path(@portfolio)
    else
      flash[:fail] = "Oops, something wrong with this entry."
      render :new
    end
  end

  def edit
    2.times { @portfolio.technologies.build}

  end

  def update
    if @portfolio.update(portfolio_params)
      flash[:success] = "Your portfolio post has been updated!"
      redirect_to portfolio_path(@portfolio)
    else
      flash[:fail] = "Oops, something wrong with this entry."
      render :edit
    end
  end

  def show
  end

  def destroy
    flash[:success] = "Your post has been deleted!"
    @portfolio.destroy
    redirect_to portfolios_path
  end

  private

  def find_portfolio
    @portfolio = Portfolio.friendly.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image, technologies_attributes: [:name])
  end
end
