require 'test_helper'

class PartnerListsControllerTest < ActionController::TestCase
  setup do
    @partner_list = partner_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partner_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partner_list" do
    assert_difference('PartnerList.count') do
      post :create, partner_list: { organization_id: @partner_list.organization_id }
    end

    assert_redirected_to partner_list_path(assigns(:partner_list))
  end

  test "should show partner_list" do
    get :show, id: @partner_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partner_list
    assert_response :success
  end

  test "should update partner_list" do
    patch :update, id: @partner_list, partner_list: { organization_id: @partner_list.organization_id }
    assert_redirected_to partner_list_path(assigns(:partner_list))
  end

  test "should destroy partner_list" do
    assert_difference('PartnerList.count', -1) do
      delete :destroy, id: @partner_list
    end

    assert_redirected_to partner_lists_path
  end
end
