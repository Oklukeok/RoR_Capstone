class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.integer :authorId
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
