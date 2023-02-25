require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @first_user = User.new(name: 'lucas1', email: 'user1@hotmail.com', password: 123_456,
                           password_confirmation: 123_456)
  end

  describe 'When the user model is tested' do
    it 'validates the name of the user' do
      expect(@first_user.valid?).to be true
    end
  end
end
