# frozen_string_literal: true

# rubocop:disable Style/Documentation
class Category < ApplicationRecord
  has_many :articles
end
# rubocop:enable Style/Documentation
