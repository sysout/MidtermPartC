require 'test_helper'

class OlympicsControllerTest < ActionController::TestCase
  setup do
    @olympic = olympics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:olympics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create olympic" do
    assert_difference('Olympic.count') do
      post :create, olympic: { athlete_name: @olympic.athlete_name, country: @olympic.country, event: @olympic.event, event_date: @olympic.event_date, medal_type: @olympic.medal_type }
    end

    assert_redirected_to olympic_path(assigns(:olympic))
  end

  test "should show olympic" do
    get :show, id: @olympic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @olympic
    assert_response :success
  end

  test "should update olympic" do
    patch :update, id: @olympic, olympic: { athlete_name: @olympic.athlete_name, country: @olympic.country, event: @olympic.event, event_date: @olympic.event_date, medal_type: @olympic.medal_type }
    assert_redirected_to olympic_path(assigns(:olympic))
  end

  test "should destroy olympic" do
    assert_difference('Olympic.count', -1) do
      delete :destroy, id: @olympic
    end

    assert_redirected_to olympics_path
  end
end
