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

  def remove_vowels(str)
    str = str.tr('a', '')
    str = str.tr('e', '')
    str = str.tr('i', '')
    str = str.tr('o', '')
    str = str.tr('u', '')
    return str
  end

  def remove_dashes(str)
    str = str.tr('-', '')
    str = str.to_i
    return str
  end

end
