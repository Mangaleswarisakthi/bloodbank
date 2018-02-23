require 'test_helper'

class BdetailControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bdetail_index_url
    assert_response :success
  end

  test "should get new" do
    get bdetail_new_url
    assert_response :success
  end

  test "should get show" do
    get bdetail_show_url
    assert_response :success
  end

  test "should get update" do
    get bdetail_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bdetail_destroy_url
    assert_response :success
  end

end
