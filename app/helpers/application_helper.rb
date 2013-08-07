module ApplicationHelper

def determine_active_page(path_or_list)
  if path_or_list.is_a? List
    path_or_list = "/lists/#{path_or_list.id}"
  end
  if path_or_list == request.fullpath
    "active_link"
  else
    ""
  end  
end



def nav_item(path, text)
  "<li class='#{determine_active_page(path)}'>#{link_to text, path}</li>".html_safe
end


end

