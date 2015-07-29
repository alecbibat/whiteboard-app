module ApplicationHelper
  def datetime(dt)
    dt.strftime("%k:%M %m/%d/%y %Z")
  end
end
