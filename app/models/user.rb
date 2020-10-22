# frozen_string_literal: true

class User < ApplicationRecord
  acts_as_voter
  validates :username, presence: true
  has_secure_password
  has_many :articles
  has_many :votes
end
