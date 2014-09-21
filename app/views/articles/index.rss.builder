xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Twin Falls Telegram"
    xml.description "Newspaper serving the Twin Falls Minecraft Server"
    xml.link articles_url

    for article in @articles
      xml.item do
        xml.title article.title
        xml.description "Read more..."
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link articles_url(article)
        xml.guid articles_url(article)
      end
    end
  end
end