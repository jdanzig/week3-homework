require 'test_helper'

class PlaceReviewsControllerTest < ActionController::TestCase
  setup do
    @place_review = place_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:place_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place_review" do
    assert_difference('PlaceReview.count') do
      post :create, place_review: {  }
    end

    assert_redirected_to place_review_path(assigns(:place_review))
  end

  test "should show place_review" do
    get :show, id: @place_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place_review
    assert_response :success
  end

  test "should update place_review" do
    patch :update, id: @place_review, place_review: {  }
    assert_redirected_to place_review_path(assigns(:place_review))
  end

  test "should destroy place_review" do
    assert_difference('PlaceReview.count', -1) do
      delete :destroy, id: @place_review
    end

    assert_redirected_to place_reviews_path
  end
end
