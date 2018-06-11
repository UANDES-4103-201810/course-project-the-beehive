module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'The Beehive'
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end
	def markdown(content)
		@@markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
		@@markdown.render(content)
	end
end
