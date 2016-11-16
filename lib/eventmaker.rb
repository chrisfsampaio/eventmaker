require 'icalendar'
require 'json'
require 'ostruct'

module Eventmaker
	def self.from_json_file(file_name)
		input = OpenStruct.new(JSON.parse(File.read(file_name)))
		event = Icalendar::Event.new
		event.summary = input.name
		event.organizer = "mailto:#{input.organizer}"
		event.dtstart = DateTime.parse input.start
		event.dtend = DateTime.parse input.end
		input.attendees.each { |attendee|
		  event.append_attendee "mailto:#{attendee}"
		}
		cal = Icalendar::Calendar.new
		cal.add_event event

		return cal.to_ical
	end
end
