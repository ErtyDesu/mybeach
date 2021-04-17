require "test_helper"

class AppartamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appartament = appartaments(:one)
  end

  test "should get index" do
    get appartaments_url
    assert_response :success
  end

  test "should get new" do
    get new_appartament_url
    assert_response :success
  end

  test "should create appartament" do
    assert_difference('Appartament.count') do
      post appartaments_url, params: { appartament: { address: @appartament.address, beds: @appartament.beds, cost: @appartament.cost, name: @appartament.name, phone: @appartament.phone, place: @appartament.place, site: @appartament.site } }
    end

    assert_redirected_to appartament_url(Appartament.last)
  end

  test "should show appartament" do
    get appartament_url(@appartament)
    assert_response :success
  end

  test "should get edit" do
    get edit_appartament_url(@appartament)
    assert_response :success
  end

  test "should update appartament" do
    patch appartament_url(@appartament), params: { appartament: { address: @appartament.address, beds: @appartament.beds, cost: @appartament.cost, name: @appartament.name, phone: @appartament.phone, place: @appartament.place, site: @appartament.site } }
    assert_redirected_to appartament_url(@appartament)
  end

  test "should destroy appartament" do
    assert_difference('Appartament.count', -1) do
      delete appartament_url(@appartament)
    end

    assert_redirected_to appartaments_url
  end
end
