class AddOccurrenceToState < ActiveRecord::Migration[5.2]
  def change
    add_reference :states, :occurrence, foreign_key: true
  end
end
