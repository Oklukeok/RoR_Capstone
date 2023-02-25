require 'rails_helper'


RSpec.describe Group, type: :model do
  before(:each) do
    @newgroup = Group.new
  end

  describe 'When the Group model is tested' do
    it 'validates the Group object' do
      @newgroup.name = 'Cookie'

      expect(@newgroup.name).to eq 'Cookie'
    end
  end
end
