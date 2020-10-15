class Category < ApplicationRecord
  has_many :articles, class_name: "Article", foreign_key: "article_id"
end
