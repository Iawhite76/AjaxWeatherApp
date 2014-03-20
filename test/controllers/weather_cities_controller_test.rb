require 'test_helper'

class WeatherCitiesControllerTest < ActionController::TestCase
  setup do
    @weather_city = weather_cities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weather_cities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weather_city" do
    assert_difference('WeatherCity.count') do
      post :create, weather_city: { name: @weather_city.name, temperature: @weather_city.temperature }
    end

    assert_redirected_to weather_city_path(assigns(:weather_city))
  end

  test "should show weather_city" do
    get :show, id: @weather_city
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weather_city
    assert_response :success
  end

  test "should update weather_city" do
    patch :update, id: @weather_city, weather_city: { name: @weather_city.name, temperature: @weather_city.temperature }
    assert_redirected_to weather_city_path(assigns(:weather_city))
  end

  test "should destroy weather_city" do
    assert_difference('WeatherCity.count', -1) do
      delete :destroy, id: @weather_city
    end

    assert_redirected_to weather_cities_path
  end
end
