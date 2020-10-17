class CreateKifs < ActiveRecord::Migration[6.0]
  def change
    create_table :kifs do |t|
      t.integer    :self_id,   null: false
      t.integer    :op_id,     null: false
      t.text       :kif,      null: false

      t.timestamps
    end
  end
end
