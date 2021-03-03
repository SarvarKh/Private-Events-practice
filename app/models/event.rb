class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"

    has_many :attendances, foreign_key: :attended_event_id
    has_many :attended_events, through: :attendances
end
