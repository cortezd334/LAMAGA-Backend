class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :ballot
      t.string :poll_location
      
      t.references :user, null: false, foreign_key: true
      t.references :candidates, null: false, foreign_key: true

      t.timestamps
    end
  end
end
