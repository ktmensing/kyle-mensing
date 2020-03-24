use_helper Nanoc::Helpers::Blogging
use_helper Nanoc::Helpers::Capturing
use_helper Nanoc::Helpers::Tagging

def publish_time_tag(date= nil)
  date ||= @item[:created_at]
  <<~HTML
  <time datetime="#{date}">#{date.strftime("%B, %-d %Y")}</time>
  HTML
end
