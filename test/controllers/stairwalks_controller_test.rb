require 'test_helper'

class StairwalksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stairwalk = stairwalks(:one)
  end

  test "should get index" do
    get stairwalks_url
    assert_response :success
  end

  test "should get new" do
    get new_stairwalk_url
    assert_response :success
  end

  test "should create stairwalk" do
    assert_difference('Stairwalk.count') do
      post stairwalks_url, params: { stairwalk: { date: @stairwalk.date, user_id: @stairwalk.user_id } }
    end

    assert_redirected_to stairwalk_url(Stairwalk.last)
  end

  test "should show stairwalk" do
    get stairwalk_url(@stairwalk)
    assert_response :success
  end

  test "should get edit" do
    get edit_stairwalk_url(@stairwalk)
    assert_response :success
  end

  test "should update stairwalk" do
    patch stairwalk_url(@stairwalk), params: { stairwalk: { date: @stairwalk.date, user_id: @stairwalk.user_id } }
    assert_redirected_to stairwalk_url(@stairwalk)
  end

  test "should destroy stairwalk" do
    assert_difference('Stairwalk.count', -1) do
      delete stairwalk_url(@stairwalk)
    end

    assert_redirected_to stairwalks_url
  end
end
