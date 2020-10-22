# frozen_string_literal: true

class Article < ApplicationRecord
  acts_as_votable
  validates :title, :text, :category, presence: true
  has_one_attached :image
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :votes
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
end
