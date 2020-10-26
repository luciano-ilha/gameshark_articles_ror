# frozen_string_literal: true

# rubocop:disable Style/Documentation

class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :article
end
# rubocop:enable Style/Documentation
