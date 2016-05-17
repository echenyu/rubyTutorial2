require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "String content is the same" do
  	get :hello
	assert_select("#first_paragraph", "First paragraph in rails")
	end
end