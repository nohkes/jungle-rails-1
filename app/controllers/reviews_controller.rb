class ReviewsController < ApplicationController
  
    before_filter :authorize

  def create
    @product = Product.find(params[:product_id])
    @review = @product.review.create(review_params)
    redirect_to product_path(@product)
  end
    def destroy
    @review = Review.find params[:id]
    @review.destroy
     redirect_to :back
    end
   private
    def review_params
      params.require(:review).permit(:description, :rating)
    end
end
