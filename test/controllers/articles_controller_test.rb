require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articles_index_url
    assert_response :success
  end

  test "should get search" do
    get articles_search_url
    assert_response :success
  end

  test "should get save_later" do
    get articles_save_later_url
    assert_response :success
  end

  test "should get saved_list" do
    get articles_saved_list_url
    assert_response :success
  end

  test "should get remove_saved" do
    get articles_remove_saved_url
    assert_response :success
  end
end
