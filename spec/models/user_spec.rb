require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    let(:user) { FactoryBot.build(:user) }
    it "should have a username" do
      user.username = nil
      expect(user).to_not be_valid  
    end

    it "should have a password" do
      user.password_digest = nil
      expect(user).to_not be_valid  
    end

    it "should have a username and password" do
      user.username = "John"
      user.password_digest = "12345"
      expect(user).to be_valid  
    end
  end
end
