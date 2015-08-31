require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl(:user) }

  [ 'name', 'email' ].each do |attr|
    it "is invalid without #{attr}" do
      user = FactoryGirl.build(:user, "#{attr}": nil)
      expect(user).to be_invalid
      end
  end
end
