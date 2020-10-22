# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validations' do
    let(:article) { FactoryBot.build(:article) }
    it 'should have a title' do
      article.title = nil
      expect(article).to_not be_valid
    end

    it 'should have a text' do
      article.text = nil
      expect(article).to_not be_valid
    end

    it 'should have a category' do
      article.category_id = nil
      expect(article).to_not be_valid
    end

    it 'should have an author' do
      article.author = nil
      expect(article).to_not be_valid
    end

    it 'should have a title, text, category and author' do
      article.title = 'Some Title'
      article.text = 'Some text'
      article.category_id = '1'
      article.user_id = '1'
      expect(article).to be_valid
    end
  end
end
