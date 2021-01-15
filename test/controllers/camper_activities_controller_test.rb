require 'test_helper'

class CamperActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get camper_activities_index_url
    assert_response :success
  end

  test "should get new" do
    get camper_activities_new_url
    assert_response :success
  end

  test "should get edit" do
    get camper_activities_edit_url
    assert_response :success
  end

  test "should get show" do
    get camper_activities_show_url
    assert_response :success
  end

end
