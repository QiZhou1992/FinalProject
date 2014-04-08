require 'test_helper'

class PublicAlbumsControllerTest < ActionController::TestCase
  setup do
    @public_album = public_albums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_albums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create public_album" do
    assert_difference('PublicAlbum.count') do
      post :create, public_album: { FollowCount: @public_album.FollowCount, Name: @public_album.Name }
    end

    assert_redirected_to public_album_path(assigns(:public_album))
  end

  test "should show public_album" do
    get :show, id: @public_album
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @public_album
    assert_response :success
  end

  test "should update public_album" do
    patch :update, id: @public_album, public_album: { FollowCount: @public_album.FollowCount, Name: @public_album.Name }
    assert_redirected_to public_album_path(assigns(:public_album))
  end

  test "should destroy public_album" do
    assert_difference('PublicAlbum.count', -1) do
      delete :destroy, id: @public_album
    end

    assert_redirected_to public_albums_path
  end
end
