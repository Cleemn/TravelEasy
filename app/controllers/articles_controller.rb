class ArticlesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
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
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    authorize @article
    redirect_to article_path(@article)

  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    authorize @article
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:name, :description, :price, :photo)
  end

end
