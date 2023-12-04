class CreateOccurrences < ActiveRecord::Migration[5.2]
  def change
    create_table :occurrences do |t|
      t.string :name
      t.string :description
      t.string :cobradeCode

      t.timestamps
    end
  end
end
