require 'test_helper'

class PrivateAlbumImagesControllerTest < ActionController::TestCase
  setup do
    @private_album_image = private_album_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:private_album_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create private_album_image" do
    assert_difference('PrivateAlbumImage.count') do
      post :create, private_album_image: { AlbumID: @private_album_image.AlbumID, ImageID: @private_album_image.ImageID }
    end

    assert_redirected_to private_album_image_path(assigns(:private_album_image))
  end

  test "should show private_album_image" do
    get :show, id: @private_album_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @private_album_image
    assert_response :success
  end

  test "should update private_album_image" do
    patch :update, id: @private_album_image, private_album_image: { AlbumID: @private_album_image.AlbumID, ImageID: @private_album_image.ImageID }
    assert_redirected_to private_album_image_path(assigns(:private_album_image))
  end

  test "should destroy private_album_image" do
    assert_difference('PrivateAlbumImage.count', -1) do
      delete :destroy, id: @private_album_image
    end

    assert_redirected_to private_album_images_path
  end
end
