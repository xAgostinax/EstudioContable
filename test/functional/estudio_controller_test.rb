require 'test_helper'

class EstudioControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get servicios" do
    get :servicios
    assert_response :success
  end

  test "should get link" do
    get :link
    assert_response :success
  end

  test "should get staff" do
    get :staff
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
