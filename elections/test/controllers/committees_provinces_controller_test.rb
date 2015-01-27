require 'test_helper'

class CommitteesProvincesControllerTest < ActionController::TestCase
  setup do
    @committees_province = committees_provinces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:committees_provinces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create committees_province" do
    assert_difference('CommitteesProvince.count') do
      post :create, committees_province: { committee_id: @committees_province.committee_id, province_id: @committees_province.province_id }
    end

    assert_redirected_to committees_province_path(assigns(:committees_province))
  end

  test "should show committees_province" do
    get :show, id: @committees_province
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @committees_province
    assert_response :success
  end

  test "should update committees_province" do
    patch :update, id: @committees_province, committees_province: { committee_id: @committees_province.committee_id, province_id: @committees_province.province_id }
    assert_redirected_to committees_province_path(assigns(:committees_province))
  end

  test "should destroy committees_province" do
    assert_difference('CommitteesProvince.count', -1) do
      delete :destroy, id: @committees_province
    end

    assert_redirected_to committees_provinces_path
  end
end
