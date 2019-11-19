require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title','PCBuilds'
    assert_select 'h1','PC Builds'
    assert_select 'p','Welcome to Giles\' Pc Builds website!'
  end

end
