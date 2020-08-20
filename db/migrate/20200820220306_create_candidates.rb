class CreateCandidates < ActiveRecord::Migration[6.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.integer :age
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
