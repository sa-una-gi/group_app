class CreateBookgroups < ActiveRecord::Migration[5.2]
  def change
    create_table :bookgroups do |t|
      t.integer :choice_id
      t.integer :prev_id
      t.integer :next_id
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
