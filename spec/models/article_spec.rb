# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength

require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'should respond to all given fields' do
    it { should respond_to(:title) }
    it { should respond_to(:text) }
    it { should respond_to(:author) }
    it { should respond_to(:category) }
  end

  context 'Validates presence of all given fields' do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:text) }
    it { is_expected.to validate_presence_of(:category) }
  end

  context 'validations' do
    let(:article) { FactoryBot.create(:article) }
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
      expect(article).to be_valid
    end
  end

  context 'Check articles association belong_to' do
    it { is_expected.to belong_to(:author) }
    it { is_expected.to belong_to(:category) }
  end
end
# rubocop:enable Metrics/BlockLength
