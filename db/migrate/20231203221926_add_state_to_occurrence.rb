class AddStateToOccurrence < ActiveRecord::Migration[5.2]
  def change
    add_reference :occurrences, :state, foreign_key: true
  end
end
