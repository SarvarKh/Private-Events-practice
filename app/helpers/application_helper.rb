module ApplicationHelper
  def check_user_sign_in
    if current_user
      concat(link_to(session_path('active'), method: :delete) do
               concat(content_tag('p', 'Sign Out', class: 'navbar-brand mx-3'))
             end)
      concat(link_to(new_event_path) do
               concat(content_tag('p', 'Create Event', class: 'navbar-brand mx-3'))
             end)
      link_to current_user.name, current_user, class: 'navbar-brand mx-3'
    else
      concat(link_to(new_user_path) do
               concat(content_tag('p', 'Sign up', class: 'navbar-brand mx-3'))
             end)
      link_to 'Sign In', new_session_path, class: 'navbar-brand mx-3'
    end
  end
end
