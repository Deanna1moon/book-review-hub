class ReviewsController < ApplicationController

def create
  @book = Book.find(params[:book_id])

  @review = @book.reviews.new(review_params)
  @review.user = User.find(session[:user_id])

  if @review.save
    redirect_to @book, notice: "Review added successfully!"
  else
    redirect_to @book, alert: "Something went wrong. Please fill in all fields."
  end
end

  def destroy
  @review = Review.find(params[:id])
  @book = @review.book

  @review.destroy

  redirect_to @book, notice: "Review deleted successfully."
end


  private

def review_params
  params.require(:review).permit(:rating, :comment)
end

end