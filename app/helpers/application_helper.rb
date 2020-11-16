module ApplicationHelper
  def user_status
    links = []
    if user_signed_in?
      links[0] = link_to 'New Post', new_post_path, class: 'nav-link'
      links[1] = link_to 'Logout', destroy_user_session_path, method: :delete, class: 'nav-link'
    else
      links[0] = link_to 'Login', new_user_session_path, class: 'nav-link'
      links[1] = link_to 'Sign Up', new_user_registration_path, class: 'nav-link'
    end
    links
  end
end
