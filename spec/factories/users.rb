FactoryBot.define do
  factory :user, aliases: [:author] do
    username { 'John' }
    password_digest { '12345' }
  end
end
