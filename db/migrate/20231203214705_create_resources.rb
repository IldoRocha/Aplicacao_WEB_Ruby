class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :price
      t.string :quantity

      t.timestamps
    end
  end
end
