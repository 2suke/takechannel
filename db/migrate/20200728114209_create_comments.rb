class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :message
      t.references :user
      t.references :board
      t.integer :number

      t.timestamps
    end
  end
end
