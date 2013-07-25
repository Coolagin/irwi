class Irwi::Formatters::Redcarpet

  def initialize
    require 'redcarpet'
  end

  def format( text )
    parser = Redcarpet::Render::HTML.new()
    markdown = Redcarpet::Markdown.new(parser, :autolink => true, :space_after_headers => true)
    markdown.render(text)
  end

end

