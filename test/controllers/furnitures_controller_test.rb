require 'test_helper'

class FurnituresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @furniture = furnitures(:one)
  end

  test "should get index" do
    get furnitures_url, as: :json
    assert_response :success
  end

  test "should create furniture" do
    assert_difference('Furniture.count') do
      post furnitures_url, params: { furniture: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show furniture" do
    get furniture_url(@furniture), as: :json
    assert_response :success
  end

  test "should update furniture" do
    patch furniture_url(@furniture), params: { furniture: {  } }, as: :json
    assert_response 200
  end

  test "should destroy furniture" do
    assert_difference('Furniture.count', -1) do
      delete furniture_url(@furniture), as: :json
    end

    assert_response 204
  end
end
