# JSON ➡️ .ics
A micro CLI to create [.ics files](https://www.ietf.org/rfc/rfc2445.txt) from a JSON file.

# Where can I use this?
This is particularly convenient if you use the iOS Simulator to develop apps that have calendar integration.
Dragging the .ics file to the Simulator will allow you to add the event to the calendar with one click.

This can also be useful for any other case in which you need .ics files to be created systematically.

# Installation
`$ gem install eventmaker`

# Usage
The first thing you need is to create a file with the event information in the form of JSON, here's one example:
```json
{
  "name" : "Event name",
  "organizer": "christian.fsampaio@gmail.com",
  "start" : "2016/12/25 19:00",
  "end": "2016/12/25 21:00",
  "attendees": ["christian.fsampaio@gmail.com", "foo@bar.com", "bar@foo.com"]
}
```

Once you have this file saved somewhere, you can run:

`$ eventmaker ~/location/to/file.json >> ./event.ics`

# Supported fields
For the moment, the only supported event fields are the ones listed in the example above.
If you feel like you could benefit from a field that is not supported, I'll gladly accept a PR adding it 😉.

If you are not really sure how to do that, it is really easy. Basically, there are two parts to it:  
1) Take a look at `lib/eventmaker.rb` to see how the event information is read from the JSON file.  
2) See [icalendar docs](https://github.com/icalendar/icalendar) and look for the field that you want to support.
