require 'test_helper'

class AilesControllerTest < ActionController::TestCase
  setup do
    @aile = ailes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ailes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aile" do
    assert_difference('Aile.count') do
      post :create, aile: { annee: @aile.annee, marque_id: @aile.marque_id, modele: @aile.modele, note: @aile.note }
    end

    assert_redirected_to aile_path(assigns(:aile))
  end

  test "should show aile" do
    get :show, id: @aile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aile
    assert_response :success
  end

  test "should update aile" do
    patch :update, id: @aile, aile: { annee: @aile.annee, marque_id: @aile.marque_id, modele: @aile.modele, note: @aile.note }
    assert_redirected_to aile_path(assigns(:aile))
  end

  test "should destroy aile" do
    assert_difference('Aile.count', -1) do
      delete :destroy, id: @aile
    end

    assert_redirected_to ailes_path
  end
end
