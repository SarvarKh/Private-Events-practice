class Event < ApplicationRecord
    scope :past_events, -> { where("date <= ?", Time.now).order(date: :desc) }
    scope :upcoming_events, -> { where("date > ?", Time.now).order(date: :asc) }

    belongs_to :creator, class_name: "User"

    has_many :attendances, foreign_key: :attended_event_id
    has_many :attendees, through: :attendances
end
