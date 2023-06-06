require "test_helper"

class ScheduleappsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scheduleapps_index_url
    assert_response :success
  end
end
