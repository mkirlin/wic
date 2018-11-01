require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get csv_export" do
    get admin_csv_export_url
    assert_response :success
  end

end
