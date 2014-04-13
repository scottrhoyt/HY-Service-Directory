require 'test_helper'

class ServiceProvidersControllerTest < ActionController::TestCase
  setup do
    @service_provider = service_providers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_providers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_provider" do
    assert_difference('ServiceProvider.count') do
      post :create, service_provider: { address: @service_provider.address, city: @service_provider.city, lattitude: @service_provider.lattitude, longitude: @service_provider.longitude, name: @service_provider.name, state: @service_provider.state, zipcode: @service_provider.zipcode }
    end

    assert_redirected_to service_provider_path(assigns(:service_provider))
  end

  test "should show service_provider" do
    get :show, id: @service_provider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_provider
    assert_response :success
  end

  test "should update service_provider" do
    patch :update, id: @service_provider, service_provider: { address: @service_provider.address, city: @service_provider.city, lattitude: @service_provider.lattitude, longitude: @service_provider.longitude, name: @service_provider.name, state: @service_provider.state, zipcode: @service_provider.zipcode }
    assert_redirected_to service_provider_path(assigns(:service_provider))
  end

  test "should destroy service_provider" do
    assert_difference('ServiceProvider.count', -1) do
      delete :destroy, id: @service_provider
    end

    assert_redirected_to service_providers_path
  end
end
