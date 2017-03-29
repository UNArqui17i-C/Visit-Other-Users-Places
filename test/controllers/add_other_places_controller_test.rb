require 'test_helper'

class AddOtherPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_other_place = add_other_places(:one)
  end

  test "should get index" do
    get add_other_places_url, as: :json
    assert_response :success
  end

  test "should create add_other_place" do
    assert_difference('AddOtherPlace.count') do
      post add_other_places_url, params: { add_other_place: { id_addnew_place: @add_other_place.id_addnew_place } }, as: :json
    end

    assert_response 201
  end

  test "should show add_other_place" do
    get add_other_place_url(@add_other_place), as: :json
    assert_response :success
  end

  test "should update add_other_place" do
    patch add_other_place_url(@add_other_place), params: { add_other_place: { id_addnew_place: @add_other_place.id_addnew_place } }, as: :json
    assert_response 200
  end

  test "should destroy add_other_place" do
    assert_difference('AddOtherPlace.count', -1) do
      delete add_other_place_url(@add_other_place), as: :json
    end

    assert_response 204
  end
end
