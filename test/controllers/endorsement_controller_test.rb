require 'test_helper'

class EndorsementControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get endorsement_create_url
    assert_response :success
  end

end
