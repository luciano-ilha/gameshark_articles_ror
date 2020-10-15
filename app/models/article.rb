class Article < ApplicationRecord
  validates :title, :text, presence: true
  
  belongs_to :author, class_name: "User", foreign_key: "user_id"
  has_many :votes
end
