module ApplicationHelper
  def title(text)
    content_for :title, text
  end 
  def h1(text)
    content_for :h1, text
  end 
end
