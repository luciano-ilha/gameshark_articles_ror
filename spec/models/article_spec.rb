require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "validations" do
    let(:article) { FactoryBot.build(:article) }
    it "should have a title" do
      article.title = nil
      expect(article).to_not be_valid  
    end

    it "should have a text" do
      article.text = nil
      expect(article).to_not be_valid  
    end
  end
end
