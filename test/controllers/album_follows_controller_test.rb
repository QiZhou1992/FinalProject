require 'test_helper'

class AlbumFollowsControllerTest < ActionController::TestCase
  setup do
    @album_follow = album_follows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:album_follows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create album_follow" do
    assert_difference('AlbumFollow.count') do
      post :create, album_follow: { AlbumID: @album_follow.AlbumID, FollowerID: @album_follow.FollowerID }
    end

    assert_redirected_to album_follow_path(assigns(:album_follow))
  end

  test "should show album_follow" do
    get :show, id: @album_follow
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @album_follow
    assert_response :success
  end

  test "should update album_follow" do
    patch :update, id: @album_follow, album_follow: { AlbumID: @album_follow.AlbumID, FollowerID: @album_follow.FollowerID }
    assert_redirected_to album_follow_path(assigns(:album_follow))
  end

  test "should destroy album_follow" do
    assert_difference('AlbumFollow.count', -1) do
      delete :destroy, id: @album_follow
    end

    assert_redirected_to album_follows_path
  end
end
