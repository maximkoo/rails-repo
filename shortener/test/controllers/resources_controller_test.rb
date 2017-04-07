require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  test "should get trimmer" do
    get :trimmer
    assert_response :success
  end

end
