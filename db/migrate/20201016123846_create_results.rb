class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.references :member,   foreign_key: true
      t.integer    :op_id
      t.string     :result
      t.text       :kifu

      t.timestamps
    end
  end
end
