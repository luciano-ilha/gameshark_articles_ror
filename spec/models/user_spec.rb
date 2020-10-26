require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryBot.build(:user) }
  
  context 'validations' do
    let(:user) { FactoryBot.create(:user) }
    it 'should have a username' do
      user.username = nil
      expect(user).to_not be_valid
    end

    it 'should have a password' do
      user.password_digest = nil
      expect(user).to_not be_valid
    end

    it 'should have a username and password' do
      expect(user).to be_valid
    end

    it 'Check presence of attributes' do
      expect(user).to validate_presence_of(:username)
      expect(user).to validate_presence_of(:password)
    end
  end

  context 'Users association' do
    it { should have_many(:articles) }
  end

  context 'User should respond to all given field' do
    it { expect(@user).to respond_to(:username) }
    it { expect(@user).to respond_to(:password) }
  end
end
