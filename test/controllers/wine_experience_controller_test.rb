require 'test_helper'

class WineExperienceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wine_experience_index_url
    assert_response :success
  end

  test "should get show" do
    get wine_experience_show_url
    assert_response :success
  end

  test "should get new" do
    get wine_experience_new_url
    assert_response :success
  end

  test "should get create" do
    get wine_experience_create_url
    assert_response :success
  end

  test "should get edit" do
    get wine_experience_edit_url
    assert_response :success
  end

end
