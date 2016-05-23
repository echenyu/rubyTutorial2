require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'create' do
    image = { image: { user_name: 'eric', link: 'http://a.fssta.com/content/dam/fsdigital/fscom/NCAA-BK/images/2015/05/27/042616-Charlotte-Hornets-Jeremy-Lin.vadapt.980.high.77.jpg' } }

    assert_difference 'Image.count', 1 do
      post :create, image
    end

    image = Image.last

    assert_redirected_to images_path
    assert_equal 'eric', image.user_name
    assert_equal 'http://a.fssta.com/content/dam/fsdigital/fscom/NCAA-BK/images/2015/05/27/042616-Charlotte-Hornets-Jeremy-Lin.vadapt.980.high.77.jpg', image.link
  end

  test 'title is correct' do
    get :index
    assert_response :success
    assert_select "title", "Home | Ropes Course"
  end

  test 'valid_link' do
    image = { image: { user_name: 'Eric', link: 'haha'} }
    assert_difference 'Image.count', 0 do
      post :create, image
    end
  end

  test 'valid_image' do
    image = { image: { user_name: 'Eric', link: 'http://a.fssta.com/content/dam/fsdigital/fscom/NCAA-BK/images/2015/05/27/042616-Charlotte-Hornets-Jeremy-Lin.vadapt.980.high.77.jpg'} }
    assert_difference 'Image.count', 1 do
      post :create, image
    end
  end

  test 'image_deleted' do
    assert_difference 'Image.count', -1 do
      post :destroy, :id => 1
    end
  end
end
