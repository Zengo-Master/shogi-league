class CreateKifus < ActiveRecord::Migration[6.0]
  def change
    create_table :kifus do |t|
      t.date       :date,        null: false
      t.integer    :sente_id,    null: false
      t.integer    :gote_id,     null: false
      t.integer    :result_id,   null: false
      t.text       :kifu,        null: false

      t.timestamps
    end
  end
end
