require 'test_helper'

class PrivateAlbumsControllerTest < ActionController::TestCase
  setup do
    @private_album = private_albums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:private_albums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create private_album" do
    assert_difference('PrivateAlbum.count') do
      post :create, private_album: { Name: @private_album.Name, UserID: @private_album.UserID }
    end

    assert_redirected_to private_album_path(assigns(:private_album))
  end

  test "should show private_album" do
    get :show, id: @private_album
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @private_album
    assert_response :success
  end

  test "should update private_album" do
    patch :update, id: @private_album, private_album: { Name: @private_album.Name, UserID: @private_album.UserID }
    assert_redirected_to private_album_path(assigns(:private_album))
  end

  test "should destroy private_album" do
    assert_difference('PrivateAlbum.count', -1) do
      delete :destroy, id: @private_album
    end

    assert_redirected_to private_albums_path
  end
end
