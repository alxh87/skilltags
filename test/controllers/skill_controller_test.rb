require 'test_helper'

class SkillControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get skill_create_url
    assert_response :success
  end

end
