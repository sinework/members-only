module PostsHelper
    def session_status_member_name(post)
      user_signed_in? ? post.user.name : 'Anonymous'
    end
  
   
  end