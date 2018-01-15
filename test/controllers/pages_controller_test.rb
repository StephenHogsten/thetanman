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

  test "should reject incomplete contact submissions" do
    post contact_url, params: {name: '', email: 'EMAIL', subject: 'SUBJECT', message: 'MESSAGE'}
    assert_response 400, 'Empty name'

    post contact_url, params: {name: 'NAME', email: '', subject: 'SUBJECT', message: 'MESSAGE'}
    assert_response 400, "Empty email"

    post contact_url, params: {name: 'NAME', email: 'EMAIL', subject: '', message: 'MESSAGE'}
    assert_response 400, "Empty subject"

    post contact_url, params: {name: 'NAME', email: 'EMAIL', subject: 'SUBJECT', message: ''}
    assert_response 400, "Empty message"

    post contact_url, params: {email: 'EMAIL', subject: 'SUBJECT', message: 'MESSAGE'}
    assert_response 400, 'No name'

    post contact_url, params: {name: 'NAME', subject: 'SUBJECT', message: 'MESSAGE'}
    assert_response 400, "No email"

    post contact_url, params: {name: 'NAME', email: 'EMAIL', message: 'MESSAGE'}
    assert_response 400, "No subject"

    post contact_url, params: {name: 'NAME', email: 'EMAIL', subject: 'SUBJECT'}
    assert_response 400, "No message"
  end

  test "should accept contact submission" do
    post contact_url, params: {user_name: 'NAME', email: 'EMAIL', subject: 'SUBJECT', message: 'MESSAGE'}
    assert_response :redirect, 'Full submission redirect'
    
    post contact_url, params: {user_name: 'NAME', email: 'EMAIL', subject: 'SUBJECT', message: 'MESSAGE'}, headers: {"ACCEPT" => 'application/json'}
    assert_response :success, 'Full submission json'
  end
    
end
