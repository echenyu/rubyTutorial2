require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  test 'link not empty' do
    image = Image.new
    assert_predicate image, :invalid?
  end
end
