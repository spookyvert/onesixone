require 'test_helper'

class UsertestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usertest = usertests(:one)
  end

  test "should get index" do
    get usertests_url
    assert_response :success
  end

  test "should get new" do
    get new_usertest_url
    assert_response :success
  end

  test "should create usertest" do
    assert_difference('Usertest.count') do
      post usertests_url, params: { usertest: { email: @usertest.email, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to usertest_url(Usertest.last)
  end

  test "should show usertest" do
    get usertest_url(@usertest)
    assert_response :success
  end

  test "should get edit" do
    get edit_usertest_url(@usertest)
    assert_response :success
  end

  test "should update usertest" do
    patch usertest_url(@usertest), params: { usertest: { email: @usertest.email, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to usertest_url(@usertest)
  end

  test "should destroy usertest" do
    assert_difference('Usertest.count', -1) do
      delete usertest_url(@usertest)
    end

    assert_redirected_to usertests_url
  end
end
