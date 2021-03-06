class ArticlesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  skip_before_action :authenticate_user!, only: :index
  skip_before_action :authenticate_user!, only: :show
  before_action :set_article, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @articles = PgSearch.multisearch(params[:query]).map{|result| result.searchable}
      # @articles_for_map = @articles.where.not(latitude: nil, longitude:nil)
    else
      @articles = Article.all
      # @articles_for_map = @articles.where.not(latitude: nil, longitude:nil)
    end

    @markers = @articles.map do |article|
      {
        lat: article.latitude,
        lng: article.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { article: article })
      } if !article.latitude.nil?
    end
  end


      # Si j'ai pas de params dans mon index
    # raise
    # if params[:category].present?
    # @cat = [ "valise", "cabine", "sac-a-dos" ]
    # # a.include?("b")   #=> true
    # # a.include?("z")   #=> false
    # @category = params[:category]
    # if @cat.include? @category
    #   # if params[:category] != ""
    #   # @restaurants = RESTAURANTS.select { |id, r| r[:category] == @category }
    #   # restaurants = Restaurant.where("name LIKE ?", "%tour%")
    #   @articles = Article.geocoded.where(category: @category)
    #   @markers = @articles.map do |article|
    #   {
    #     lat: article.latitude,
    #     lng: article.longitude
    #   }
    #   end
    #   # @articles = Article.select { |id, a| a[:category] == @category }
    # else


    #   if(params.has_key?(:category) && params.has_key?(:two))
    # Si j'ai un params, selon la valeur de mon params je filtre mon index


  def show
    authorize @article
    @booking = Booking.new
    @review = Review.new
    @markers = [{
        lat: @article.latitude,
        lng: @article.longitude
      }]
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
    params.require(:article).permit(:name, :category, :description, :price, :photo, :address, :latitude, :longitude)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
