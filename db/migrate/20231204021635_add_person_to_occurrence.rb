class AddPersonToOccurrence < ActiveRecord::Migration[5.2]
  def change
    add_reference :occurrences, :person, foreign_key: true
  end
end
