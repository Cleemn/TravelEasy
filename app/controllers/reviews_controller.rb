class ReviewsController < ApplicationController
  def new
    # we need @article in our `simple_form_for`
    @article = Article.find(params[:article_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `article_id` to associate review with corresponding article
    @article = Article.find(params[:article_id])
    @review.article = @article
    @review.user = current_user
    # before Ajax / # @review.save, # redirect_to article_path(@article)
    if @review.save
      respond_to do |format|
        format.html { redirect_to article_path(@article) }
        format.js
      end
    else
      respond_to do |format|
        # Need specify Path. from Reviews to Articles
        format.html { render 'articles/show' }
        format.js
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
