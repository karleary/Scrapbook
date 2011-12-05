require 'test_helper'

class PictureTagsControllerTest < ActionController::TestCase
  setup do
    @picture_tag = picture_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:picture_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picture_tag" do
    assert_difference('PictureTag.count') do
      post :create, picture_tag: @picture_tag.attributes
    end

    assert_redirected_to picture_tag_path(assigns(:picture_tag))
  end

  test "should show picture_tag" do
    get :show, id: @picture_tag.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @picture_tag.to_param
    assert_response :success
  end

  test "should update picture_tag" do
    put :update, id: @picture_tag.to_param, picture_tag: @picture_tag.attributes
    assert_redirected_to picture_tag_path(assigns(:picture_tag))
  end

  test "should destroy picture_tag" do
    assert_difference('PictureTag.count', -1) do
      delete :destroy, id: @picture_tag.to_param
    end

    assert_redirected_to picture_tags_path
  end
end
