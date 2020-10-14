class Article < ApplicationRecord
  validates :title, :text, presence: true
  
  belongs_to :user
end
