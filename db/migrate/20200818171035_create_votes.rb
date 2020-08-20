class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :name
      t.string :party
      t.string :candidateUrl
      
      t.references :user, null: false, foreign_key: true
      t.references :candidates, null: true, foreign_key: true

      t.timestamps
    end
  end
end
