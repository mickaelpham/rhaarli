xml.instruct! :xml, version: '1.0'
xml.feed xmlns: 'http://www.w3.org/2005/Atom' do |feed|
  feed.title @settings.page_title
  feed.updated @links.maximum(:updated_at)
  feed.link rel: 'self', href: request.original_url
  feed.author do |author|
    author.name 'Mickael Pham'
    author.url  root_url
  end
  feed.id root_url

  @links.each do |link|
    feed.entry do |entry|
      entry.title link.title
      entry.link href: link.url
      entry.updated link.updated_at.xmlschema
      entry.content type: 'html' do |content|
        content << link.description
        content << h(%Q(<br>(<a href="#{link_url link}">Permalink</a>)))
      end
      entry.id link_url link
    end
  end
end
