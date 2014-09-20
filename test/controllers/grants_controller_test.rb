require 'test_helper'

class GrantsControllerTest < ActionController::TestCase
  setup do
    @grant = grants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grant" do
    assert_difference('Grant.count') do
      post :create, grant: { addr1: @grant.addr1, addr2: @grant.addr2, app_deadline: @grant.app_deadline, app_process: @grant.app_process, city: @grant.city, contact_fname: @grant.contact_fname, contact_lname: @grant.contact_lname, email: @grant.email, fund_type: @grant.fund_type, name: @grant.name, organization: @grant.organization, phone: @grant.phone, state: @grant.state, zip: @grant.zip }
    end

    assert_redirected_to grant_path(assigns(:grant))
  end

  test "should show grant" do
    get :show, id: @grant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grant
    assert_response :success
  end

  test "should update grant" do
    patch :update, id: @grant, grant: { addr1: @grant.addr1, addr2: @grant.addr2, app_deadline: @grant.app_deadline, app_process: @grant.app_process, city: @grant.city, contact_fname: @grant.contact_fname, contact_lname: @grant.contact_lname, email: @grant.email, fund_type: @grant.fund_type, name: @grant.name, organization: @grant.organization, phone: @grant.phone, state: @grant.state, zip: @grant.zip }
    assert_redirected_to grant_path(assigns(:grant))
  end

  test "should destroy grant" do
    assert_difference('Grant.count', -1) do
      delete :destroy, id: @grant
    end

    assert_redirected_to grants_path
  end
end
