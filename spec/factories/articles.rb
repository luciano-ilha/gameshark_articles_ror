FactoryBot.define do
  factory :article do
    title { 'Article Title' }
    text { 'Article Text' }
    author
    category
  end
end
