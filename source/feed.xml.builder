xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  xml.title "The Emacs.el podcast"
  xml.subtitle "One editor to rule them all!"
  xml.id "https://github.com/emacs-el/emacs-el.github.io"
  xml.link "href" => "https://github.com/emacs-el/emacs-el.github.io"
  xml.link "href" => "https://github.com/emacs-el/emacs-el.github.io/feed.xml", "rel" => "self"
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.author { xml.name "Daniel Gopar" }

  blog.articles.each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => article.url
      xml.id article.url
      xml.published article.date.to_time.iso8601
      xml.updated article.date.to_time.iso8601
      xml.author { xml.name "Mica Semrick" }
      # xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end
