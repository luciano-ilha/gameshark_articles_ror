class Article < ApplicationRecord
  validates :title, :text, presence: true

  has_one_attached :image
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  has_many :votes
  has_many :categories, class_name: "Category", foreign_key: "category_id"
end
