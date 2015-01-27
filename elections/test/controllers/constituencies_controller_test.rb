require 'test_helper'

class ConstituenciesControllerTest < ActionController::TestCase
  setup do
    @constituency = constituencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constituencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constituency" do
    assert_difference('Constituency.count') do
      post :create, constituency: { authorized_number: @constituency.authorized_number, empty_votes: @constituency.empty_votes, given_cards: @constituency.given_cards, mandate_number: @constituency.mandate_number, many_votes: @constituency.many_votes, number: @constituency.number, other_votes: @constituency.other_votes, province_id: @constituency.province_id, urn_cards: @constituency.urn_cards }
    end

    assert_redirected_to constituency_path(assigns(:constituency))
  end

  test "should show constituency" do
    get :show, id: @constituency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constituency
    assert_response :success
  end

  test "should update constituency" do
    patch :update, id: @constituency, constituency: { authorized_number: @constituency.authorized_number, empty_votes: @constituency.empty_votes, given_cards: @constituency.given_cards, mandate_number: @constituency.mandate_number, many_votes: @constituency.many_votes, number: @constituency.number, other_votes: @constituency.other_votes, province_id: @constituency.province_id, urn_cards: @constituency.urn_cards }
    assert_redirected_to constituency_path(assigns(:constituency))
  end

  test "should destroy constituency" do
    assert_difference('Constituency.count', -1) do
      delete :destroy, id: @constituency
    end

    assert_redirected_to constituencies_path
  end
end
