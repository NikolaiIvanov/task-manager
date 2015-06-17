module ApplicationHelper
  def set_title(title)
    site_name = 'Simple Task Manager'
    if title.empty?
      site_name
    else
      "#{title} - #{site_name}"
    end
  end
end
