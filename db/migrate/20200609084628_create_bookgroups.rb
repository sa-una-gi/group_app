class CreateBookgroups < ActiveRecord::Migration[5.2]
  def change
    create_table :bookgroups do |t|
      t.integer :books, array: true, default: []
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
