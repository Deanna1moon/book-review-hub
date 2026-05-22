class ReviewsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])

    @review = @book.reviews.build(review_params)

    if @review.save
      redirect_to @book, notice: "Review added successfully."
    else
      redirect_to @book, alert: "Something went wrong."
    end
  end

  private

  def review_params
    params.require(:review).permit(:reviewer_name, :rating, :comment)
  end

end