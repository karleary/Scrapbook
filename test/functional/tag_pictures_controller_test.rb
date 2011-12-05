require 'test_helper'

class TagPicturesControllerTest < ActionController::TestCase
  setup do
    @tag_picture = tag_pictures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_pictures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_picture" do
    assert_difference('TagPicture.count') do
      post :create, tag_picture: @tag_picture.attributes
    end

    assert_redirected_to tag_picture_path(assigns(:tag_picture))
  end

  test "should show tag_picture" do
    get :show, id: @tag_picture.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag_picture.to_param
    assert_response :success
  end

  test "should update tag_picture" do
    put :update, id: @tag_picture.to_param, tag_picture: @tag_picture.attributes
    assert_redirected_to tag_picture_path(assigns(:tag_picture))
  end

  test "should destroy tag_picture" do
    assert_difference('TagPicture.count', -1) do
      delete :destroy, id: @tag_picture.to_param
    end

    assert_redirected_to tag_pictures_path
  end
end
