require 'test_helper'

class RacersControllerTest < ActionController::TestCase
  setup do
    @racer = racers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:racers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create racer" do
    assert_difference('Racer.count') do
      post :create, racer: { city: @racer.city, dob: @racer.dob, email: @racer.email, emergencyphone: @racer.emergencyphone, firstname: @racer.firstname, gender: @racer.gender, lastname: @racer.lastname, phone1: @racer.phone1, phone2: @racer.phone2, racerlevel: @racer.racerlevel, state: @racer.state, street1: @racer.street1, street2: @racer.street2, zipcode: @racer.zipcode }
    end

    assert_redirected_to racer_path(assigns(:racer))
  end

  test "should show racer" do
    get :show, id: @racer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @racer
    assert_response :success
  end

  test "should update racer" do
    put :update, id: @racer, racer: { city: @racer.city, dob: @racer.dob, email: @racer.email, emergencyphone: @racer.emergencyphone, firstname: @racer.firstname, gender: @racer.gender, lastname: @racer.lastname, phone1: @racer.phone1, phone2: @racer.phone2, racerlevel: @racer.racerlevel, state: @racer.state, street1: @racer.street1, street2: @racer.street2, zipcode: @racer.zipcode }
    assert_redirected_to racer_path(assigns(:racer))
  end

  test "should destroy racer" do
    assert_difference('Racer.count', -1) do
      delete :destroy, id: @racer
    end

    assert_redirected_to racers_path
  end
end
