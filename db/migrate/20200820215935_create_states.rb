class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :current_rep
      t.string :current_sen

      t.timestamps
    end
  end
end
