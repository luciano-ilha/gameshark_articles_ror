# frozen_string_literal: true

# rubocop:disable Style/Documentation

class AddUserReferencesToArticle < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :user, foreign_key: true
  end
end
# rubocop:enable Style/Documentation
