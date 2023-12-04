class AddResourceToOccurrence < ActiveRecord::Migration[5.2]
  def change
    add_reference :occurrences, :resource, foreign_key: true
  end
end
