require 'test_helper'

class MaterielTypesControllerTest < ActionController::TestCase
  setup do
    @materiel_type = materiel_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materiel_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materiel_type" do
    assert_difference('MaterielType.count') do
      post :create, materiel_type: { name: @materiel_type.name }
    end

    assert_redirected_to materiel_type_path(assigns(:materiel_type))
  end

  test "should show materiel_type" do
    get :show, id: @materiel_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @materiel_type
    assert_response :success
  end

  test "should update materiel_type" do
    patch :update, id: @materiel_type, materiel_type: { name: @materiel_type.name }
    assert_redirected_to materiel_type_path(assigns(:materiel_type))
  end

  test "should destroy materiel_type" do
    assert_difference('MaterielType.count', -1) do
      delete :destroy, id: @materiel_type
    end

    assert_redirected_to materiel_types_path
  end
end
