require 'application_system_test_case'

class EntitiesTest < ApplicationSystemTestCase
  setup do
    @entity = entities(:one)
  end

  test 'visiting the index' do
    visit entities_url
    assert_selector 'h1', text: 'Entities'
  end

  test 'should create entity' do
    visit entities_url
    click_on 'New entity'

    fill_in 'Amount', with: @entity.amount
    fill_in 'Authorid', with: @entity.authorId
    fill_in 'Name', with: @entity.name
    click_on 'Create Entity'

    assert_text 'Entity was successfully created'
    click_on 'Back'
  end

  test 'should update Entity' do
    visit entity_url(@entity)
    click_on 'Edit this entity', match: :first

    fill_in 'Amount', with: @entity.amount
    fill_in 'Authorid', with: @entity.authorId
    fill_in 'Name', with: @entity.name
    click_on 'Update Entity'

    assert_text 'Entity was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Entity' do
    visit entity_url(@entity)
    click_on 'Destroy this entity', match: :first

    assert_text 'Entity was successfully destroyed'
  end
end
