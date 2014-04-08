require 'test_helper'

class PublicAlbumImagesControllerTest < ActionController::TestCase
  setup do
    @public_album_image = public_album_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_album_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create public_album_image" do
    assert_difference('PublicAlbumImage.count') do
      post :create, public_album_image: { AlbumID: @public_album_image.AlbumID, ImageID: @public_album_image.ImageID }
    end

    assert_redirected_to public_album_image_path(assigns(:public_album_image))
  end

  test "should show public_album_image" do
    get :show, id: @public_album_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @public_album_image
    assert_response :success
  end

  test "should update public_album_image" do
    patch :update, id: @public_album_image, public_album_image: { AlbumID: @public_album_image.AlbumID, ImageID: @public_album_image.ImageID }
    assert_redirected_to public_album_image_path(assigns(:public_album_image))
  end

  test "should destroy public_album_image" do
    assert_difference('PublicAlbumImage.count', -1) do
      delete :destroy, id: @public_album_image
    end

    assert_redirected_to public_album_images_path
  end
end
