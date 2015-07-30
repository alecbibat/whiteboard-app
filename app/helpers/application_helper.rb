module ApplicationHelper
  def datetime(dt)
    dt.strftime("%k:%M %m/%d/%y %Z")
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user].id)
  end

  def logged_in?
    if @current_user == nil
      false
    else
      true
    end
  end

end
