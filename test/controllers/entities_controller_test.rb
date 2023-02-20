require "test_helper"

class EntitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entity = entities(:one)
  end

  test "should get index" do
    get entities_url
    assert_response :success
  end

  test "should get new" do
    get new_entity_url
    assert_response :success
  end

  test "should create entity" do
    assert_difference("Entity.count") do
      post entities_url, params: { entity: { amount: @entity.amount, authorId: @entity.authorId, name: @entity.name } }
    end

    assert_redirected_to entity_url(Entity.last)
  end

  test "should show entity" do
    get entity_url(@entity)
    assert_response :success
  end

  test "should get edit" do
    get edit_entity_url(@entity)
    assert_response :success
  end

  test "should update entity" do
    patch entity_url(@entity), params: { entity: { amount: @entity.amount, authorId: @entity.authorId, name: @entity.name } }
    assert_redirected_to entity_url(@entity)
  end

  test "should destroy entity" do
    assert_difference("Entity.count", -1) do
      delete entity_url(@entity)
    end

    assert_redirected_to entities_url
  end
end
