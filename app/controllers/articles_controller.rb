class ArticlesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def show
    authorize @article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    authorize @article
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @article.update(article_params)
    authorize @article
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    authorize @article
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:name, :description, :price, :photo)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
