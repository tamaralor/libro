require 'test_helper'

class ObrasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get obras_index_url
    assert_response :success
  end

end
