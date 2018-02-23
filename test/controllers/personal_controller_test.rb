require 'test_helper'

class PersonalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personal_index_url
    assert_response :success
  end

  test "should get show" do
    get personal_show_url
    assert_response :success
  end

  test "should get new" do
    get personal_new_url
    assert_response :success
  end

  test "should get update" do
    get personal_update_url
    assert_response :success
  end

  test "should get destroy" do
    get personal_destroy_url
    assert_response :success
  end

end
