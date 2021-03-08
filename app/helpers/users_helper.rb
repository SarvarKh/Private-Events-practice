module UsersHelper
  def check_upcoming_event(event)
    if event.date > Time.now
      content_tag :div, class: 'm-1' do
        content_tag :div, class: 'border border-secondary p-2 m-3' do
          concat(content_tag('h6', 'Upcoming event:'))
          concat(tag('br'))
          concat(content_tag('strong', 'Event Description: '))
          concat(content_tag('span', event.description))
          concat(tag('br'))
          concat(content_tag('strong', 'Event Start Date and Time: '))
          concat(content_tag('span', event.date))
        end
      end
    else
      content_tag :div, class: 'm-1' do
        content_tag :div, class: 'border border-secondary p-2 m-3' do
          concat(content_tag('h6', 'Previously attended event: '))
          concat(tag('br'))
          concat(content_tag('strong', 'Event Description: '))
          concat(content_tag('span', event.description))
          concat(tag('br'))
          concat(content_tag('strong', 'Event Start Date and Time: '))
          concat(content_tag('span', event.date))
        end
      end
    end
  end
end
