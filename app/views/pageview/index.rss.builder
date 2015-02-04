xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Twin Falls Telegram"
    xml.description "Newspaper serving the Twin Falls Minecraft Server"
    xml.link articles_url

    for pageview in @pageviews
      xml.item do
        xml.ip pageview.ip
        xml.url pageview.url
        xml.pubDate pageview.created_at.to_s(:long)
      end
    end
  end
end