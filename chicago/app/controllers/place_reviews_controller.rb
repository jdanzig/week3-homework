class PlaceReviewsController < ApplicationController
  before_action :set_place

  # POST /place_reviews
  # POST /place_reviews.json
  def create
    @place_review = @place.reviews.build(place_review_params)

    respond_to do |format|
      if @place_review.save
        format.html { redirect_to @place, notice: 'Place review was successfully created.' }
      else
        format.html { render 'place#show' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:place_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_review_params
      params.require(:place_review).permit(:place_id, :rating, :description)
    end
end
