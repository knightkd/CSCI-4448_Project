require 'test_helper'

class OrganizationCatagoriesControllerTest < ActionController::TestCase
  setup do
    @organization_catagory = organization_catagories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organization_catagories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization_catagory" do
    assert_difference('OrganizationCatagory.count') do
      post :create, organization_catagory: { description: @organization_catagory.description, name: @organization_catagory.name }
    end

    assert_redirected_to organization_catagory_path(assigns(:organization_catagory))
  end

  test "should show organization_catagory" do
    get :show, id: @organization_catagory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organization_catagory
    assert_response :success
  end

  test "should update organization_catagory" do
    patch :update, id: @organization_catagory, organization_catagory: { description: @organization_catagory.description, name: @organization_catagory.name }
    assert_redirected_to organization_catagory_path(assigns(:organization_catagory))
  end

  test "should destroy organization_catagory" do
    assert_difference('OrganizationCatagory.count', -1) do
      delete :destroy, id: @organization_catagory
    end

    assert_redirected_to organization_catagories_path
  end
end
