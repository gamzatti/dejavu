module ApplicationHelper

  def determine_active_page(path_or_list, current_tab)
    if @current_tab && @current_tab == current_tab 
      "active_link"        
    elsif path_or_list == request.fullpath
      "active_link"
    else
      ""
    end  
  end

  def nav_item(path, text, current_tab=nil)
    "<li class='#{determine_active_page(path, current_tab)}'>#{link_to text, path}</li>".html_safe
  end

  def nav_item_dropdown(path, text, current_tab=nil)
    "<li class='#{determine_active_page(path, current_tab)}'>#{link_to text, "#", {:onclick => "$('.dropdown').slideToggle()", :class => "dropdown_button" } }</li>".html_safe
  end

end

