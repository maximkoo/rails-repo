require 'test_helper'

class StreetControllerTest < ActionController::TestCase
   test "SHOULD GET INDEX" do
     get :index
     assert_response :success
   end
end
