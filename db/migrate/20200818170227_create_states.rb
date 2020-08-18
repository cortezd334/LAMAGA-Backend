class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :current_representative
      t.string :current_senator

      t.timestamps
    end
  end
end
