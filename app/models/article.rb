class Article < ApplicationRecord
  validates :title, :text, presence: true
  
  belongs_to :user, class_name: "user", foreign_key: "author_id"
  has_many :votes
end
