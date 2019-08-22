class ReviewsController < ApplicationController
  def new
    # we need @article in our `simple_form_for`
    @article = Article.find(params[:article_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `article_id` to associate review with corresponding article
    @article = Article.find(params[:restaurant_id])
    @review.article = @article
    @review.save
    redirect_to article_path(@article)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
