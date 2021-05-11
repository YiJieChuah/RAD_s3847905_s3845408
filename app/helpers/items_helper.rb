module ItemsHelper
  def in_saved_list?(item)
    if session[:saved_list]
      session[:saved_list].any?{|i| i["id"] == item.id }
    end
  end
end
