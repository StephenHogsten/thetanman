require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Lucy Tan - Author"
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", bio_path
    assert_select "a[href=?]", currently_reading_path
    assert_select "a[href=?]", what_we_were_promised_path
    assert_select "a[href=?]", news_path
    assert_select "a[href=?]", events_path
    assert_select "a[href=?]", other_work_path
    assert_select "a[href=?]", contact_path
  end

  test "should get bio" do
    get bio_url
    assert_response :success
  end

  test "should get currently reading" do
    get currently_reading_url
    assert_response :success
  end
  
  test "should get what we were promised" do
    get what_we_were_promised_url
    assert_response :success
  end
  
  test "should get news" do
    get news_url
    assert_response :success
  end
  
  test "should get events" do
    get events_url
    assert_response :success
  end
  
  test "should get other work" do
    get other_work_url
    assert_response :success
  end
  
  test "should get contact" do
    get contact_url
    assert_response :success
  end
end
