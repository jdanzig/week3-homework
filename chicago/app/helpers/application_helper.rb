module ApplicationHelper
  def star(filled=true)
    content_tag :i, :class => [ 'fa', filled ? 'fa-star' : 'fa-star-o' ] do 
    end
  end

  def stars(num=5)
    filled = [[5,num].min, 0].max
    empty = 5-filled
    arr = []
    filled.times { arr << star }
    empty.times { arr << star(false) }
    arr.join.html_safe
  end
end
