class Kifu < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :sente
  belongs_to_active_hash :gote
  belongs_to_active_hash :kifu_result

  with_options presence: true do
    validates :date
    validates :sente_id, numericality: { other_than:1 }
    validates :gote_id, numericality: { other_than: 1 }
    validates :result_id, numericality: { other_than: 1 }
    validates :kifu
  end
end
