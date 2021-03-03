class AddAttendeeIdToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :attendee_id, :integer
  end
end
