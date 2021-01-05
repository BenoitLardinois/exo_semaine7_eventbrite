class AttributeOrganizerToEvents < ActiveRecord::Migration[6.1]
  def change
    change_table :events do |t|
      t.references :organizer, index: true
    end
  end
end
