class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :cpf
      t.string :phone

      t.timestamps
    end
  end
end
