class AddAttendedEventToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :attended_event_id, :integer
  end
end
