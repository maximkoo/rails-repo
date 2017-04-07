require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edut" do
    get :edut
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get trololo" do
    get :trololo
    assert_response :success
  end

end
