require 'test_helper'

class ImagesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'create' do
    image = { image: { user_name: 'eric', link: 'http://image' } }

    assert_difference 'Image.count', 1 do
      post :create, image
    end

    image = Image.last

    assert_redirected_to images_path
    assert_equal 'eric', image.user_name
    assert_equal 'http://image', image.link
  end

  test 'title is correct' do
    get :index
    assert_response :success
    assert_select "title", "Home | Ropes Course"
  end
end
