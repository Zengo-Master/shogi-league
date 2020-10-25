FactoryBot.define do
  factory :kifu do
    Faker::Config.locale = :ja
    date      { Faker::Date.between(from: '2015-01-01', to: '2025-12-31') }
    sente_id  { Faker::Number.between(from: 2, to: 11) }
    gote_id   { Faker::Number.between(from: 2, to: 11) }
    result_id { Faker::Number.between(from: 2, to: 5) }
    kifu      { Faker::Lorem.sentence }
  end
end