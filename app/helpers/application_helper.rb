module ApplicationHelper

  def logo
    image_tag("logo.jpg", :alt => "King cross leopolis", :class => "round")
  end
  # Return a title on a per-page basis.
  def title
    base_title = "King cross leopolis App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
