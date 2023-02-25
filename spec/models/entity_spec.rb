require 'rails_helper'

RSpec.describe Entity, type: :model do
  before(:each) do
    @first_entity = Entity.new
  end

  describe 'When the user model is tested' do
    it 'validates the name of the food' do
      @first_entity.amount = 250

      expect(@first_entity.amount).to eq 250
    end
  end
end
