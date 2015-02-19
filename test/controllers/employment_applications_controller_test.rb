require 'test_helper'

class EmploymentApplicationsControllerTest < ActionController::TestCase
  setup do
    @employment_application = employment_applications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employment_applications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employment_application" do
    assert_difference('EmploymentApplication.count') do
      post :create, employment_application: { email: @employment_application.email, message: @employment_application.message, name: @employment_application.name, office_location: @employment_application.office_location }
    end

    assert_redirected_to employment_application_path(assigns(:employment_application))
  end

  test "should show employment_application" do
    get :show, id: @employment_application
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employment_application
    assert_response :success
  end

  test "should update employment_application" do
    patch :update, id: @employment_application, employment_application: { email: @employment_application.email, message: @employment_application.message, name: @employment_application.name, office_location: @employment_application.office_location }
    assert_redirected_to employment_application_path(assigns(:employment_application))
  end

  test "should destroy employment_application" do
    assert_difference('EmploymentApplication.count', -1) do
      delete :destroy, id: @employment_application
    end

    assert_redirected_to employment_applications_path
  end
end
